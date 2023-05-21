################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/mmu_ARMCA7.c \
F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/startup_ARMCA7.c \
F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/system_ARMCA7.c 

OBJS += \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/mmu_ARMCA7.o \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/startup_ARMCA7.o \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/system_ARMCA7.o 

C_DEPS += \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/mmu_ARMCA7.d \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/startup_ARMCA7.d \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/system_ARMCA7.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/mmu_ARMCA7.o: F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/mmu_ARMCA7.c Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/startup_ARMCA7.o: F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/startup_ARMCA7.c Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/system_ARMCA7.o: F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/system_ARMCA7.c Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCA7

clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCA7:
	-$(RM) ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/mmu_ARMCA7.d ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/mmu_ARMCA7.o ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/mmu_ARMCA7.su ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/startup_ARMCA7.d ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/startup_ARMCA7.o ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/startup_ARMCA7.su ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/system_ARMCA7.d ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/system_ARMCA7.o ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCA7/system_ARMCA7.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCA7

