################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/src/ibus.c 

OBJS += \
./Lib/src/ibus.o 

C_DEPS += \
./Lib/src/ibus.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/src/%.o Lib/src/%.su Lib/src/%.cyclo: ../Lib/src/%.c Lib/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Code/ARM/NewWorkspace/IM/Lib/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lib-2f-src

clean-Lib-2f-src:
	-$(RM) ./Lib/src/ibus.cyclo ./Lib/src/ibus.d ./Lib/src/ibus.o ./Lib/src/ibus.su

.PHONY: clean-Lib-2f-src

