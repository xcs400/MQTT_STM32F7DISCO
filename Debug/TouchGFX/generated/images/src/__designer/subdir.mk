################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button.cpp \
../TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button_pressed.cpp \
../TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button.cpp \
../TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button_pressed.cpp \
../TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small.cpp \
../TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small_pressed.cpp \
../TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button.cpp \
../TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button_pressed.cpp 

OBJS += \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button.o \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button_pressed.o \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button.o \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button_pressed.o \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small.o \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small_pressed.o \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button.o \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button_pressed.o 

CPP_DEPS += \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button.d \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button_pressed.d \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button.d \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button_pressed.d \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small.d \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small_pressed.d \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button.d \
./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button_pressed.d 


# Each subdirectory must supply rules for building sources it contributes
TouchGFX/generated/images/src/__designer/%.o TouchGFX/generated/images/src/__designer/%.su TouchGFX/generated/images/src/__designer/%.cyclo: ../TouchGFX/generated/images/src/__designer/%.cpp TouchGFX/generated/images/src/__designer/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DDEBUG '-DMBEDTLS_CONFIG_FILE="mbedtls_config.h"' -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../TouchGFX/target/generated -I../Drivers/CMSIS/Include -I../Core/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../TouchGFX/App -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/gui/include -I../TouchGFX/generated/videos/include -I"C:/projet_actif/MQTT/Drivers/Components/MPC2515" -I"C:/projet_actif/MQTT/Drivers/Components/ft5336" -I../LWIP/App -I../LWIP/Target -I../MBEDTLS/App -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/mbedTLS/include/mbedtls -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Middlewares/Third_Party/mbedTLS/include -I../Drivers/BSP/Components/lan8742 -I"C:/projet_actif/MQTT/Middlewares/Third_Party/MQTT" -I"C:/projet_actif/MQTT/Middlewares/Third_Party/MQTT/MQTTPacket" -I"C:/projet_actif/MQTT/Drivers/BSP" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -femit-class-debug-always -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__designer

clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__designer:
	-$(RM) ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button.cyclo ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button.d ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button.o ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button.su ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button_pressed.cyclo ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button_pressed.d ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button_pressed.o ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_Edge_icon_button_pressed.su ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button.cyclo ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button.d ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button.o ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button.su ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button_pressed.cyclo ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button_pressed.d ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button_pressed.o ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_icon_button_pressed.su ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small.cyclo ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small.d ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small.o ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small.su ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small_pressed.cyclo ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small_pressed.d ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small_pressed.o ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Round_small_pressed.su ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button.cyclo ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button.d ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button.o ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button.su ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button_pressed.cyclo ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button_pressed.d ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button_pressed.o ./TouchGFX/generated/images/src/__designer/image_Blue_Buttons_Square_icon_button_pressed.su

.PHONY: clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__designer

