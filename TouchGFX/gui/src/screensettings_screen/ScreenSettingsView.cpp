#include <gui/screensettings_screen/ScreenSettingsView.hpp>
//#include "PollingRoutines.h"// add
//#include "RingBuff.h"// add
#include <stdio.h>
#include <string.h>
#define CPLUSPLUS 1
#include "..\..\..\Core\Inc\main.h"


Unicode::UnicodeChar keyboardBuffer[2][18]; // add
uint8_t keyboardSelection = 0; // add

ScreenSettingsView::ScreenSettingsView()
{

}

void ScreenSettingsView::setupScreen()
{
    ScreenSettingsViewBase::setupScreen();
	ParaSauvegarde_t *ps;
	ps=	Get_Parametre();
	int mot= ps->SelectedMotor;

	memset(&textAreaSsidBuffer, 0, TEXTAREASSID_SIZE);

	Unicode::snprintf(textAreaSsidBuffer, TEXTAREASSID_SIZE-1, "%d",ps->Moteur[mot].minPos/ ps->Moteur[mot].scale);
	textAreaSsid.invalidate();


	Unicode::snprintf(textAreaPwBuffer, TEXTAREAPW_SIZE-1, "%d",ps->Moteur[mot].minPos/ ps->Moteur[mot].scale);
	textAreaPw.invalidate();


}

void ScreenSettingsView::tearDownScreen()
{
    ScreenSettingsViewBase::tearDownScreen();

	ParaSauvegarde_t *ps;
	ps=	Get_Parametre();
	int mot=ps->SelectedMotor;

   if (keyboardBuffer[0][0] == 45 )  // sign -
	   ps->Moteur[mot].minPos= -Unicode::atoi(&keyboardBuffer[0][1]) *   ps->Moteur[mot].scale ;

   else
	   ps->Moteur[mot].minPos= Unicode::atoi(keyboardBuffer[0]) *   ps->Moteur[mot].scale;


   if (keyboardBuffer[1][0] == 45 )  // sign -
	ps->Moteur[mot].maxPos= -Unicode::atoi(&keyboardBuffer[1][1]) *   ps->Moteur[mot].scale;
   else
	ps->Moteur[mot].maxPos= Unicode::atoi(keyboardBuffer[1]) *   ps->Moteur[mot].scale;


  setlimitMinMax(mot);


}

void ScreenSettingsView::keyboardSelected(uint8_t value)
{
	keyboardSelection = value;
}

void ScreenSettingsView::updateScreen()
{
	if(Unicode::strlen(keyboardBuffer[0]) > 0)
	{
		memset(&textAreaSsidBuffer, 0, TEXTAREASSID_SIZE);
		Unicode::strncpy(textAreaSsidBuffer, keyboardBuffer[0], TEXTAREASSID_SIZE - 1);
		textAreaSsidBuffer[TEXTAREASSID_SIZE-1] = '\0'; // make sure last index is null
		textAreaSsid.invalidate();
	}
	if(Unicode::strlen(keyboardBuffer[1]) > 0)
	{
		memset(&textAreaPwBuffer, 0, TEXTAREAPW_SIZE);
		Unicode::strncpy(textAreaPwBuffer, keyboardBuffer[1], TEXTAREAPW_SIZE - 1);
		textAreaPwBuffer[TEXTAREAPW_SIZE-1] = '\0'; // make sure last index is null
		textAreaPw.invalidate();
	}

/*	if(Unicode::strlen(keyboardBuffer[1]) > 0)
	{
		char temp[18] = {0};
		uint16_t n = Unicode::strlen(keyboardBuffer[1]) ;
		Unicode::UnicodeChar unicodeBuf[18] = {0};

		memset(&temp, '*', n);

		Unicode::fromUTF8((uint8_t*)temp, unicodeBuf, Unicode::strlen(keyboardBuffer[1]));

		memset(&textAreaPwBuffer, 0, TEXTAREAPW_SIZE);
		Unicode::strncpy(textAreaPwBuffer, unicodeBuf, TEXTAREAPW_SIZE - 1);
		textAreaPwBuffer[TEXTAREAPW_SIZE-1] = '\0'; // make sure last index is null
		textAreaPw.invalidate();
	}
	*/
}
