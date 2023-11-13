################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TouchGFX/gui/src/screensettings_screen/ScreenSettingsPresenter.cpp \
../TouchGFX/gui/src/screensettings_screen/ScreenSettingsView.cpp 

OBJS += \
./TouchGFX/gui/src/screensettings_screen/ScreenSettingsPresenter.o \
./TouchGFX/gui/src/screensettings_screen/ScreenSettingsView.o 

CPP_DEPS += \
./TouchGFX/gui/src/screensettings_screen/ScreenSettingsPresenter.d \
./TouchGFX/gui/src/screensettings_screen/ScreenSettingsView.d 


# Each subdirectory must supply rules for building sources it contributes
TouchGFX/gui/src/screensettings_screen/%.o TouchGFX/gui/src/screensettings_screen/%.su TouchGFX/gui/src/screensettings_screen/%.cyclo: ../TouchGFX/gui/src/screensettings_screen/%.cpp TouchGFX/gui/src/screensettings_screen/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../TouchGFX/target/generated -I../Drivers/CMSIS/Include -I../Core/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../TouchGFX/App -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/gui/include -I../TouchGFX/generated/videos/include -I"C:/projet_actif/MQTT/Drivers/Components/MPC2515" -I"C:/projet_actif/MQTT/Drivers/Components/ft5336" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/BSP/Components/lan8742 -I"C:/projet_actif/MQTT/Middlewares/Third_Party/MQTT" -I"C:/projet_actif/MQTT/Middlewares/Third_Party/MQTT/MQTTPacket" -I"C:/projet_actif/MQTT/Drivers/BSP" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=standard_c_nano_cpp.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TouchGFX-2f-gui-2f-src-2f-screensettings_screen

clean-TouchGFX-2f-gui-2f-src-2f-screensettings_screen:
	-$(RM) ./TouchGFX/gui/src/screensettings_screen/ScreenSettingsPresenter.cyclo ./TouchGFX/gui/src/screensettings_screen/ScreenSettingsPresenter.d ./TouchGFX/gui/src/screensettings_screen/ScreenSettingsPresenter.o ./TouchGFX/gui/src/screensettings_screen/ScreenSettingsPresenter.su ./TouchGFX/gui/src/screensettings_screen/ScreenSettingsView.cyclo ./TouchGFX/gui/src/screensettings_screen/ScreenSettingsView.d ./TouchGFX/gui/src/screensettings_screen/ScreenSettingsView.o ./TouchGFX/gui/src/screensettings_screen/ScreenSettingsView.su

.PHONY: clean-TouchGFX-2f-gui-2f-src-2f-screensettings_screen

