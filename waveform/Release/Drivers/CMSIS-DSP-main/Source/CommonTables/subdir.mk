################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/CMSIS-DSP-main/Source/CommonTables/CommonTables.c \
F:/CMSIS-DSP-main/Source/CommonTables/CommonTablesF16.c \
F:/CMSIS-DSP-main/Source/CommonTables/arm_common_tables.c \
F:/CMSIS-DSP-main/Source/CommonTables/arm_common_tables_f16.c \
F:/CMSIS-DSP-main/Source/CommonTables/arm_const_structs.c \
F:/CMSIS-DSP-main/Source/CommonTables/arm_const_structs_f16.c \
F:/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables.c \
F:/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables_f16.c 

OBJS += \
./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTables.o \
./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTablesF16.o \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables.o \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables_f16.o \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs.o \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs_f16.o \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables.o \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables_f16.o 

C_DEPS += \
./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTables.d \
./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTablesF16.d \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables.d \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables_f16.d \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs.d \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs_f16.d \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables.d \
./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables_f16.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTables.o: F:/CMSIS-DSP-main/Source/CommonTables/CommonTables.c Drivers/CMSIS-DSP-main/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTablesF16.o: F:/CMSIS-DSP-main/Source/CommonTables/CommonTablesF16.c Drivers/CMSIS-DSP-main/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables.o: F:/CMSIS-DSP-main/Source/CommonTables/arm_common_tables.c Drivers/CMSIS-DSP-main/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables_f16.o: F:/CMSIS-DSP-main/Source/CommonTables/arm_common_tables_f16.c Drivers/CMSIS-DSP-main/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs.o: F:/CMSIS-DSP-main/Source/CommonTables/arm_const_structs.c Drivers/CMSIS-DSP-main/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs_f16.o: F:/CMSIS-DSP-main/Source/CommonTables/arm_const_structs_f16.c Drivers/CMSIS-DSP-main/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables.o: F:/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables.c Drivers/CMSIS-DSP-main/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables_f16.o: F:/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables_f16.c Drivers/CMSIS-DSP-main/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-CommonTables

clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-CommonTables:
	-$(RM) ./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTables.d ./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTables.o ./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTables.su ./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTablesF16.d ./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTablesF16.o ./Drivers/CMSIS-DSP-main/Source/CommonTables/CommonTablesF16.su ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables.d ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables.o ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables.su ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables_f16.d ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables_f16.o ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_common_tables_f16.su ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs.d ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs.o ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs.su ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs_f16.d ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs_f16.o ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_const_structs_f16.su ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables.d ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables.o ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables.su ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables_f16.d ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables_f16.o ./Drivers/CMSIS-DSP-main/Source/CommonTables/arm_mve_tables_f16.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-CommonTables

