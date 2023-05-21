function getStatus() {
    var url = state_URL;
    $.get(url).done(currentStatus);
}

function portRun() {
    var url = run_URL;
    $.get(url);
}

function portStop() {
    var url = stop_URL;
    $.get(url);
}

function setFreq() {
    let freq = document.querySelector("#Frequency");
    var url = freq_URL.replace("freqValue", freq.value) + "?freq=" + freq.value;
    $.get(url);
}

function setVpp() {
    let vpp = document.querySelector("#Amplitude");
    var url = vpp_URL.replace("vppValue", vpp.value) + "?vpp=" + vpp.value;
    $.get(url);
}

function setOffset() {
    let off = document.querySelector("#Offset");
    var url = offset_URL.replace("offsetValue", off.value) + "?offset=" + off.value;
    $.get(url);
}

function setStyle() {
    let wave=document.getElementById("waveOptions");
    let waveType=wave.options[wave.selectedIndex].text;
    var url = style_URL.replace("wave", waveType) + "?style=" + waveType;
    $.get(url);
}

function getPort(){
    var url = port_URL;
    $.get(url).done(showPort);
}

function sendPort(){
    let selectPort = document.getElementById("portOptions");
    let selection = selectPort.options[selectPort.selectedIndex].text;
    var url = selectPort_URL.replace("port",selection) + "?port" + selection;
    $.get(url);
}

function stopPort() {
    var url = stopPort_URL;
    $.get(url);
}

function exitView() {
    var url = exitView_URL;
    $.get(url);
}

function currentStatus(newStatus){
    var parsed="";
    for( index in newStatus["awg"]["1"][0]){
	if(index!="command"){
		parsed += index +":"+ newStatus["awg"]["1"][0][index]+"\n";  
	}
    }
    alert(parsed);  
}

function showPort(newPort){
    if(userClick == 0){
	userClick = 1;
    	var select = document.getElementById("portOptions");
    	select.options.length = 0;
    	for(index in newPort["ports"]) {
    		select.options[select.options.length] = new Option(newPort["ports"][index], index);
    	}
    }
    else{userClick = 0;}
}


