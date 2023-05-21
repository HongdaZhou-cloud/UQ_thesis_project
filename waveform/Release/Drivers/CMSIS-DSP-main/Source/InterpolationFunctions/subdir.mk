################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctions.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctionsF16.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f16.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f32.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q15.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q31.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q7.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f16.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f32.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q15.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q31.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q7.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_f32.c \
F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_init_f32.c 

OBJS += \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctions.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctionsF16.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f16.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f32.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q15.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q31.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q7.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f16.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f32.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q15.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q31.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q7.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_f32.o \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_init_f32.o 

C_DEPS += \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctions.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctionsF16.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f16.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f32.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q15.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q31.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q7.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f16.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f32.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q15.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q31.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q7.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_f32.d \
./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_init_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctions.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctions.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctionsF16.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctionsF16.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f16.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f16.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f32.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f32.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q15.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q15.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q31.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q31.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q7.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q7.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f16.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f16.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f32.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f32.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q15.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q15.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q31.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q31.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q7.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q7.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_f32.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_f32.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_init_f32.o: F:/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_init_f32.c Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-InterpolationFunctions

clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-InterpolationFunctions:
	-$(RM) ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctions.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctions.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctions.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctionsF16.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctionsF16.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/InterpolationFunctionsF16.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f16.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f16.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f16.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f32.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f32.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_f32.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q15.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q15.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q15.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q31.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q31.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q31.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q7.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q7.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_bilinear_interp_q7.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f16.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f16.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f16.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f32.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f32.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_f32.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q15.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q15.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q15.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q31.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q31.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q31.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q7.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q7.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_linear_interp_q7.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_f32.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_f32.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_f32.su ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_init_f32.d ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_init_f32.o ./Drivers/CMSIS-DSP-main/Source/InterpolationFunctions/arm_spline_interp_init_f32.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-InterpolationFunctions

