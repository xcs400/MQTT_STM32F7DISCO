#ifndef __CAN_SPI_H
#define	__CAN_SPI_H

#include "main.h"


typedef union {
  struct {
    uint8_t idType;
    uint32_t id;
    uint8_t dlc;
    uint8_t data0;
    uint8_t data1;
    uint8_t data2;
    uint8_t data3;
    uint8_t data4;
    uint8_t data5;
    uint8_t data6;
    uint8_t data7;
  } frame;
  uint8_t array[14];
} uCAN_MSG;

#define dSTANDARD_CAN_MSG_ID_2_0B 1
#define dEXTENDED_CAN_MSG_ID_2_0B 2

uint8_t CANSPI_Initialize(void);
void CANSPI_Sleep(void);
uint8_t CANSPI_Transmit(uCAN_MSG *tempCanMsg);
uint8_t CANSPI_Receive(uCAN_MSG *tempCanMsg);
uint8_t CANSPI_messagesInBuffer(void);
uint8_t CANSPI_isBussOff(void);
uint8_t CANSPI_isRxErrorPassive(void);
uint8_t CANSPI_isTxErrorPassive(void);


#define CAN_5KBPS    1

#define CAN_10KBPS   2

#define CAN_20KBPS   3

#define CAN_25KBPS   4

#define CAN_31KBPS   5

#define CAN_33KBPS   6

#define CAN_40KBPS   7

#define CAN_50KBPS   8

#define CAN_80KBPS   9

#define CAN_83KBPS   10

#define CAN_95KBPS   11

#define CAN_100KBPS  12

#define CAN_125KBPS  13

#define CAN_200KBPS  14

#define CAN_250KBPS  15

#define CAN_500KBPS  16

#define CAN_666KBPS  17
#define CAN_800KBPS  18
#define CAN_1000KBPS 19









#endif	/* __CAN_SPI_H */
