################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TouchGFX/generated/gui_generated/src/warnpower_screen/WarnPowerViewBase.cpp 

OBJS += \
./TouchGFX/generated/gui_generated/src/warnpower_screen/WarnPowerViewBase.o 

CPP_DEPS += \
./TouchGFX/generated/gui_generated/src/warnpower_screen/WarnPowerViewBase.d 


# Each subdirectory must supply rules for building sources it contributes
TouchGFX/generated/gui_generated/src/warnpower_screen/%.o TouchGFX/generated/gui_generated/src/warnpower_screen/%.su TouchGFX/generated/gui_generated/src/warnpower_screen/%.cyclo: ../TouchGFX/generated/gui_generated/src/warnpower_screen/%.cpp TouchGFX/generated/gui_generated/src/warnpower_screen/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../TouchGFX/target/generated -I../Drivers/CMSIS/Include -I../Core/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../TouchGFX/App -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/gui/include -I../TouchGFX/generated/videos/include -I"C:/projet_actif/MQTT/Drivers/Components/MPC2515" -I"C:/projet_actif/MQTT/Core/Src/CANopenNode" -I"C:/projet_actif/MQTT/Core/Src/CANopenNode_STM32" -I"C:/projet_actif/MQTT/Core/Src/CANopenNode/storage" -I"C:/projet_actif/MQTT/Core/Src/CANopenNode/301" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TouchGFX-2f-generated-2f-gui_generated-2f-src-2f-warnpower_screen

clean-TouchGFX-2f-generated-2f-gui_generated-2f-src-2f-warnpower_screen:
	-$(RM) ./TouchGFX/generated/gui_generated/src/warnpower_screen/WarnPowerViewBase.cyclo ./TouchGFX/generated/gui_generated/src/warnpower_screen/WarnPowerViewBase.d ./TouchGFX/generated/gui_generated/src/warnpower_screen/WarnPowerViewBase.o ./TouchGFX/generated/gui_generated/src/warnpower_screen/WarnPowerViewBase.su

.PHONY: clean-TouchGFX-2f-generated-2f-gui_generated-2f-src-2f-warnpower_screen

