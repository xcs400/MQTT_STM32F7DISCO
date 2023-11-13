################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/CANopenNode/304/CO_GFC.c \
../Core/Src/CANopenNode/304/CO_SRDO.c 

C_DEPS += \
./Core/Src/CANopenNode/304/CO_GFC.d \
./Core/Src/CANopenNode/304/CO_SRDO.d 

OBJS += \
./Core/Src/CANopenNode/304/CO_GFC.o \
./Core/Src/CANopenNode/304/CO_SRDO.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/CANopenNode/304/%.o Core/Src/CANopenNode/304/%.su Core/Src/CANopenNode/304/%.cyclo: ../Core/Src/CANopenNode/304/%.c Core/Src/CANopenNode/304/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../TouchGFX/target/generated -I../Drivers/CMSIS/Include -I../Core/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../TouchGFX/App -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/gui/include -I../TouchGFX/generated/videos/include -I"C:/projet_actif/MQTT/Drivers/Components/MPC2515" -I"C:/projet_actif/MQTT/Core/Src/CANopenNode" -I"C:/projet_actif/MQTT/Core/Src/CANopenNode_STM32" -I"C:/projet_actif/MQTT/Core/Src/CANopenNode/storage" -I"C:/projet_actif/MQTT/Core/Src/CANopenNode/301" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-CANopenNode-2f-304

clean-Core-2f-Src-2f-CANopenNode-2f-304:
	-$(RM) ./Core/Src/CANopenNode/304/CO_GFC.cyclo ./Core/Src/CANopenNode/304/CO_GFC.d ./Core/Src/CANopenNode/304/CO_GFC.o ./Core/Src/CANopenNode/304/CO_GFC.su ./Core/Src/CANopenNode/304/CO_SRDO.cyclo ./Core/Src/CANopenNode/304/CO_SRDO.d ./Core/Src/CANopenNode/304/CO_SRDO.o ./Core/Src/CANopenNode/304/CO_SRDO.su

.PHONY: clean-Core-2f-Src-2f-CANopenNode-2f-304

