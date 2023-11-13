/*
 * mqtt_task.c
 *
 *  Created on: 2020. 5. 19.
 *      Author: eziya76@gmail.com
 */

#include "main.h"
#include "mqtt_task.h"

float getTemperature(void);



#define MAX_PRECISION	(10)
static const double rounders[MAX_PRECISION + 1] =
{
	0.5,				// 0
	0.05,				// 1
	0.005,				// 2
	0.0005,				// 3
	0.00005,			// 4
	0.000005,			// 5
	0.0000005,			// 6
	0.00000005,			// 7
	0.000000005,		// 8
	0.0000000005,		// 9
	0.00000000005		// 10
};

char * ftoa(double f, char * buf, int precision)
{
	char * ptr = buf;
	char * p = ptr;
	char * p1;
	char c;
	long intPart;

	// check precision bounds
	if (precision > MAX_PRECISION)
		precision = MAX_PRECISION;

	// sign stuff
	if (f < 0)
	{
		f = -f;
		*ptr++ = '-';
	}

	if (precision < 0)  // negative precision == automatic precision guess
	{
		if (f < 1.0) precision = 6;
		else if (f < 10.0) precision = 5;
		else if (f < 100.0) precision = 4;
		else if (f < 1000.0) precision = 3;
		else if (f < 10000.0) precision = 2;
		else if (f < 100000.0) precision = 1;
		else precision = 0;
	}

	// round value according the precision
	if (precision)
		f += rounders[precision];

	// integer part...
	intPart = f;
	f -= intPart;

	if (!intPart)
		*ptr++ = '0';
	else
	{
		// save start pointer
		p = ptr;

		// convert (reverse order)
		while (intPart)
		{
			*p++ = '0' + intPart % 10;
			intPart /= 10;
		}

		// save end pos
		p1 = p;

		// reverse result
		while (p > ptr)
		{
			c = *--p;
			*p = *ptr;
			*ptr++ = c;
		}

		// restore end pos
		ptr = p1;
	}

	// decimal part
	if (precision)
	{
		// place decimal point
		*ptr++ = '.';

		// convert
		while (precision--)
		{
			f *= 10.0;
			c = f;
			*ptr++ = '0' + c;
			f -= c;
		}
	}

	// terminating zero
	*ptr = 0;

	return buf;
}
void initonnetwork()
{
//	NewNetwork(&net);
}

void MqttClientSubTask(void const *argument)
{
	while(1)
	{
		if(!mqttClient.isconnected)
		{
			printf( "\r\nMqttClientSubTask:connect to broker");
			MQTTDisconnect(&mqttClient);
			MqttConnectBroker();
			osDelay(1000);
		}
		else
		{

			if (FAILURE== MQTTYield(&mqttClient, 1000) )//handle timer
				printf( "\r\nMqttClientSubTask:has failed");
			osDelay(100);
		}
	}
}

//mqtt publish task
int compteur;
void MqttClientPubTask(void const *argument)
{
	 char str[100] ;

	MQTTMessage message;

	while(1)
	{
		if(mqttClient.isconnected)
		{
			printf( "\r\n MqttClientPubTask:send");
			sprintf(str,"%u",compteur);
			compteur=compteur+1;
			if (compteur ==100)
				compteur=0;
			message.payload = (void*)str;
			message.payloadlen = strlen(str);
printf(" %s",str);
			MQTTPublish(&mqttClient, "house/bulbs/compteur", &message); //publish a message

			ftoa( getTemperature(), message.payload,1);

			message.payloadlen = strlen(message.payload);
printf(" %s",str);
			MQTTPublish(&mqttClient, "house/bulbs/temperature", &message); //publish a message


		}


		osDelay(2000);
	}
}

int MqttConnectBroker()
{
	int ret;

	NewNetwork(&net);
	ret = ConnectNetwork(&net, BROKER_IP, MQTT_PORT);

//	net_clear();
//	ret = net_init(&net);
	if(ret != MQTT_SUCCESS)
	{
		printf("MqttConnectBroker:net_init failed.\n");
		return -1;
	}

/*
 * 	ret = net_connect(&net, BROKER_IP, MQTT_PORT);
	if(ret != MQTT_SUCCESS)
	{
		printf("net_connect failed.\n");
		return -1;
	}
*/

	MQTTClientInit(&mqttClient, &net, 1000, sndBuffer, sizeof(sndBuffer), rcvBuffer, sizeof(rcvBuffer));

	MQTTPacket_connectData data = MQTTPacket_connectData_initializer;
	data.willFlag = 0;
	data.MQTTVersion = 4;
	data.clientID.cstring = "P5";
//	data.username.cstring = "";
//	data.password.cstring = "";
	data.keepAliveInterval = 60;
	data.cleansession = 1;

	ret = MQTTConnect(&mqttClient, &data);
	if(ret != MQTT_SUCCESS)
	{

		printf("\r\nMqttConnectBroker:MQTTConnect failed.\n");
		return ret;
	}

	ret = MQTTSubscribe(&mqttClient, "house/bulbs/bulb2", QOS0, MqttMessageArrived);
	if(ret != MQTT_SUCCESS)
	{
		printf("\r\nMqttConnectBroker:MQTTSubscribe failed.\n");
		return ret;
	}

	printf("\r\nMqttConnectBroker:MqttConnectBroker O.K.\n");
	return MQTT_SUCCESS;
}

void MqttMessageArrived(MessageData* msg)
{
	//PFN HAL_GPIO_TogglePin(LED_BLUE_GPIO_Port, LED_BLUE_Pin); //toggle pin when new message arrived

	MQTTMessage* message = msg->message;
	memset(msgBuffer, 0, sizeof(msgBuffer));
	memcpy(msgBuffer, message->payload,message->payloadlen);

	printf("\r\nMessageArrived:MQTT MSG[%d]:%s\n", (int)message->payloadlen, msgBuffer);

}
