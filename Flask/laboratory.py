from flask import Flask, render_template, jsonify, redirect, url_for
import json
import serial
import serial.tools.list_ports
import time
from weblablib import WebLab, weblab_user
from weblablib import requires_active, requires_login

global stopRun, wave_mode, wave_amplitude, wave_frequency, wave_offset, serial_ins, in_use,select_list
stopRun = 0
wave_mode = "DC"
wave_amplitude = 0
wave_frequency = 0
wave_offset = 0
select_list = 'NULL'
serial_ins = 'NULL'
in_use = 0

app = Flask(__name__)
app.config.update({
    'SECRET_KEY': 'something-random',
    'WEBLAB_USERNAME': 'weblabdeusto',
    'WEBLAB_PASSWORD': 'password',
})

weblab = WebLab(app)

@weblab.initial_url
def initial_url():
    return url_for('index')
    
@app.route("/")
#@requires_login
def index():
    global in_use
    if in_use == 0:
        in_use = 1
        return render_template('index.html')
    else:
        return 'Sorry, the device is in use, please wait for a while and try again.'

@app.route('/port')
def port():
    return jsonify(ports=get_ports())

@app.route('/exit')
def exit():
    global in_use,serial_ins,select_list,stopRun,wave_mode,wave_amplitude,wave_frequency,wave_offset
    in_use = 0
    stopRun = 0
    wave_mode = "DC"
    wave_amplitude = 0
    wave_frequency = 0
    wave_offset = 0
    stop_string='''
        {
           "awg":{
              "1":[
                 {
                    "command":"stop"
                 }
              ]
           }
        }
        '''
    data = json.loads(stop_string)
    stop_json=json.dumps(data) + "\n"

    set_string='''
        {
           "awg":{
              "1":[
                 {
                    "command":"setRegularWaveform",
                    "signalType":"%s",
                    "signalFreq":%f,
                    "vpp":%f,
                    "vOffset":%f 
                 }
              ]
           }
        }
        ''' % (wave_mode, wave_frequency , wave_amplitude, wave_offset)        
    data = json.loads(set_string)
    set_json=json.dumps(data) + "\n"

    if serial_ins == 'NULL':
        if select_list != 'NULL':
            serial_ins = serial.Serial(select_list, baudrate=9600, timeout=0.5, bytesize=8)

    if select_list != 'NULL':
        serial_ins.write(set_json.encode())
        print(set_json)
        time.sleep(0.1)
        serial_ins.write(stop_json.encode())
        print(stop_json)
        
    serial_ins = 'NULL'
    select_list = 'NULL'
    return "0"

@app.route('/disconnect')
def disconnect():
    global serial_ins
    serial_ins = 'NULL'
    return "0"

@app.route('/select/<type>')
def select(type):
    global serial_ins, select_list
    if serial_ins == 'NULL':
        select_list = type
        serial_ins = serial.Serial(select_list, baudrate=9600, timeout=0.5, bytesize=8)
        current_state()
    return "0"

@app.route('/state')
def state():
    global serial_ins
    state_string='''
    {
        "awg": {
            "1": [
                {
                    "command": "getCurrentState"
                }
            ]
        }
    }
    '''
    data = json.loads(state_string)
    state_json=json.dumps(data) + "\n"
    if serial_ins != 'NULL':
        serial_ins.write(state_json.encode())
        print(state_json)
    return jsonify(current_state())



@app.route('/stop')
def stop():
    global stopRun, serial_ins
    stop_string='''
        {
           "awg":{
              "1":[
                 {
                    "command":"stop"
                 }
              ]
           }
        }
        '''
    data = json.loads(stop_string)
    stop_json=json.dumps(data) + "\n"
    if stopRun == 1:
        if serial_ins != 'NULL':
            serial_ins.write(stop_json.encode())
            print(stop_json)
    stopRun = 0
    return jsonify(stop_run())

@app.route('/run')
def run():
    global stopRun#, serial_ins
    stopRun = 1
    #run_string='''
    #{
    #   "awg":{
    #      "1":[
    #         {
    #            "command":"run"
    #         }
    #      ]
    #   }
    #}
    #'''
    
    #data = json.loads(run_string)
    #run_json=json.dumps(data) + "\n"
    #serial_ins.write(run_json.encode())
    #print(run_json)
    #time.sleep(0.1)
    return jsonify(stop_run())

@app.route('/style/<type>')
def style(type):
    global wave_mode
    wave_mode = type
    return jsonify(stop_run())

@app.route('/freq/<number>')
def freq(number):
    global wave_frequency
    if  number.isnumeric():
        wave_frequency = float(number)
        return jsonify(stop_run())
    else:
        return "0"

@app.route('/vpp/<number>')
def vpp(number):
    global wave_amplitude
    if  number.isnumeric():
        wave_amplitude = float(number)
        return jsonify(stop_run())
    else:
        return "0"

@app.route('/offset/<number>')
def offset(number):
    global wave_offset
    if  number.isnumeric():
        wave_offset = float(number)
        return jsonify(stop_run())
    else:
        return "0"

def stop_run():
    global stopRun, wave_mode, wave_amplitude, wave_frequency, wave_offset, serial_ins
    if stopRun == 0:
        text = "stop"
    elif stopRun == 1:
        text = "run"
        set_string='''
        {
           "awg":{
              "1":[
                 {
                    "command":"setRegularWaveform",
                    "signalType":"%s",
                    "signalFreq":%f,
                    "vpp":%f,
                    "vOffset":%f 
                 }
              ]
           }
        }
        ''' % (wave_mode, wave_frequency, wave_amplitude, wave_offset)        
        data = json.loads(set_string)
        set_json=json.dumps(data) + "\n"
        if serial_ins != 'NULL':
            serial_ins.write(set_json.encode())
            print(set_json)


    stop_run_js='''
    {
       "awg":{
          "1":[
             {
                "command":"%s",
                "signalType":"%s",
                "signalFreq":%f,
                "vpp":%f,
                "vOffset":%f 
             }
          ]
       }
    }
    ''' % (text, wave_mode, wave_frequency, wave_amplitude, wave_offset)        
    return json.loads(stop_run_js)

def get_ports():
    ports = list(serial.tools.list_ports.comports())
    ports_list = {}
    i=0
    for comport in ports:
        ports_list[i] = list(comport)[0]
        i = i + 1
    return ports_list

def current_state():
    global serial_ins
    time.sleep(0.1)
    if serial_ins != 'NULL':
        if serial_ins.in_waiting:
        # readnumber type: bytes
            readnumber = serial_ins.read_until(b'\r')
            protocol=(readnumber.decode('utf-8'))
            responses=json.loads(protocol)
            print(responses)
            #解析为数组
            # if responses['awg']['1'][0]['command'] == "run":
                
            # elif responses['awg']['1'][0]['command'] == "stop":
                
            # # elif responses['awg']['1'][0]['command'] == "getCurrentState":
            state_wave = responses['awg']['1'][0]['state']
            state_type = responses['awg']['1'][0]['waveType']
            state_amplitude = responses['awg']['1'][0]['actualSignalFreq']
            state_frequency = responses['awg']['1'][0]['actualVpp']
            state_offset = responses['awg']['1'][0]['actualVOffset']
            # elif responses['awg']['1'][0]['command'] == "setRegularWaveform":
            #state_wave="stopping"
            #state_type="None"
            #state_amplitude=50
            #state_frequency=50
            #state_offset=0
            state_js='''
            {
               "awg":{
                  "1":[
                     {
                        "command": "getCurrentState",
                        "state": "%s",
                        "waveType": "%s",
                        "actualSignalFreq": %f,
                        "actualVpp": %f,
                        "actualVOffset": %f
                     }
                  ]
               }
            }
            ''' % (state_wave, state_type, state_amplitude, state_frequency, state_offset)        
            return json.loads(state_js)

if __name__ == "__main__":
    app.run(debug=True)