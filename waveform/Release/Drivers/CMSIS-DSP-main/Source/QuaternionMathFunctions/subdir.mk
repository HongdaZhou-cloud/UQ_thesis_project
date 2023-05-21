################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/QuaternionMathFunctions.c \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c \
F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c 

OBJS += \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/QuaternionMathFunctions.o \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o 

C_DEPS += \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/QuaternionMathFunctions.d \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d \
./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/QuaternionMathFunctions.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/QuaternionMathFunctions.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o: F:/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-QuaternionMathFunctions

clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-QuaternionMathFunctions:
	-$(RM) ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/QuaternionMathFunctions.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/QuaternionMathFunctions.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/QuaternionMathFunctions.su ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.su ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.su ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.su ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.su ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.su ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_f32.su ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.su ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o ./Drivers/CMSIS-DSP-main/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-Source-2f-QuaternionMathFunctions

