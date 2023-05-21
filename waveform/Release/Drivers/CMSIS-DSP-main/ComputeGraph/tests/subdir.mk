################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/CMSIS-DSP-main/ComputeGraph/tests/timing.c 

OBJS += \
./Drivers/CMSIS-DSP-main/ComputeGraph/tests/timing.o 

C_DEPS += \
./Drivers/CMSIS-DSP-main/ComputeGraph/tests/timing.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP-main/ComputeGraph/tests/timing.o: F:/CMSIS-DSP-main/ComputeGraph/tests/timing.c Drivers/CMSIS-DSP-main/ComputeGraph/tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-ComputeGraph-2f-tests

clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-ComputeGraph-2f-tests:
	-$(RM) ./Drivers/CMSIS-DSP-main/ComputeGraph/tests/timing.d ./Drivers/CMSIS-DSP-main/ComputeGraph/tests/timing.o ./Drivers/CMSIS-DSP-main/ComputeGraph/tests/timing.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-ComputeGraph-2f-tests

