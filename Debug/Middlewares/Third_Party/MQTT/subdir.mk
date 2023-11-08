################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/MQTT/MQTTClient.c \
../Middlewares/Third_Party/MQTT/MQTTInterface.c 

C_DEPS += \
./Middlewares/Third_Party/MQTT/MQTTClient.d \
./Middlewares/Third_Party/MQTT/MQTTInterface.d 

OBJS += \
./Middlewares/Third_Party/MQTT/MQTTClient.o \
./Middlewares/Third_Party/MQTT/MQTTInterface.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/MQTT/%.o Middlewares/Third_Party/MQTT/%.su Middlewares/Third_Party/MQTT/%.cyclo: ../Middlewares/Third_Party/MQTT/%.c Middlewares/Third_Party/MQTT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DDEBUG '-DMBEDTLS_CONFIG_FILE="mbedtls_config.h"' -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../TouchGFX/target/generated -I../Drivers/CMSIS/Include -I../Core/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../TouchGFX/App -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/gui/include -I../TouchGFX/generated/videos/include -I"C:/projet_actif/MQTT/Drivers/Components/MPC2515" -I"C:/projet_actif/MQTT/Drivers/Components/ft5336" -I../LWIP/App -I../LWIP/Target -I../MBEDTLS/App -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/mbedTLS/include/mbedtls -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Middlewares/Third_Party/mbedTLS/include -I../Drivers/BSP/Components/lan8742 -I"C:/projet_actif/MQTT/Middlewares/Third_Party/MQTT" -I"C:/projet_actif/MQTT/Middlewares/Third_Party/MQTT/MQTTPacket" -I"C:/projet_actif/MQTT/Drivers/BSP" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-MQTT

clean-Middlewares-2f-Third_Party-2f-MQTT:
	-$(RM) ./Middlewares/Third_Party/MQTT/MQTTClient.cyclo ./Middlewares/Third_Party/MQTT/MQTTClient.d ./Middlewares/Third_Party/MQTT/MQTTClient.o ./Middlewares/Third_Party/MQTT/MQTTClient.su ./Middlewares/Third_Party/MQTT/MQTTInterface.cyclo ./Middlewares/Third_Party/MQTT/MQTTInterface.d ./Middlewares/Third_Party/MQTT/MQTTInterface.o ./Middlewares/Third_Party/MQTT/MQTTInterface.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-MQTT

