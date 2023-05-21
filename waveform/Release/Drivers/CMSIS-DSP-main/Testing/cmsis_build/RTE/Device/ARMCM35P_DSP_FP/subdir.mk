################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.c \
F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/system_ARMCM35P.c 

S_UPPER_SRCS += \
F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.S 

OBJS += \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.o \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/system_ARMCM35P.o 

S_UPPER_DEPS += \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.d 

C_DEPS += \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.d \
./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/system_ARMCM35P.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.o: F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.S Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.o: F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.c Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/system_ARMCM35P.o: F:/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/system_ARMCM35P.c Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCM35P_DSP_FP

clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCM35P_DSP_FP:
	-$(RM) ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.d ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.o ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/startup_ARMCM35P.su ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/system_ARMCM35P.d ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/system_ARMCM35P.o ./Drivers/CMSIS-DSP-main/Testing/cmsis_build/RTE/Device/ARMCM35P_DSP_FP/system_ARMCM35P.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Testing-2f-cmsis_build-2f-RTE-2f-Device-2f-ARMCM35P_DSP_FP

