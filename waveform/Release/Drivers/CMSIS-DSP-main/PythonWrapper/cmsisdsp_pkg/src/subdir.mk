################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.c \
F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_window.c 

OBJS += \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.o \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_window.o 

C_DEPS += \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.d \
./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_window.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_window.o: F:/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_window.c Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src

clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src:
	-$(RM) ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.su ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_window.d ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_window.o ./Drivers/CMSIS-DSP-main/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_window.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2d-main-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src

