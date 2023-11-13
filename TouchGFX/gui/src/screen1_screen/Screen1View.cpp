#include <gui/screen1_screen/Screen1View.hpp>
#include <stdio.h>


 extern "C" uint8_t* gettracebuffer(void);
 extern "C" uint8_t getp();
 extern "C" char* getlocalip(void);
 extern "C" char* getbroker(void);
 extern "C" float getTemperature(void);




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

Screen1View::Screen1View()
{

}

void Screen1View::setupScreen()
{
	MoteurConnected1.setColor(0xff0000)	;
	MoteurConnected2.setColor(0xff0000)	;


	//Screen1ViewBase::setupScreen();
}

void Screen1View::tearDownScreen()
{
    Screen1ViewBase::tearDownScreen();
}




void Screen1View::TickUpdate()
{

	static int val=0;
	static int val2=1000;

	int color0=0;
	int color1=0;




//	Unicode::fromUTF8((uint8_t*)Logbuffer, TextLogBuffer, TEXTLOG_SIZE);
//	Unicode::snprintf(TextLogBuffer, TEXTLOG_SIZE, "%s",Logbuffer);

	uint8_t i;
	uint8_t* r= gettracebuffer();
	 i= getp();

	uint16_t  hei= TextLog.getHeight();
	 uint16_t  wdt= TextLog.getWidth();

	 uint16_t  ls= 13; //(uint16_t) TextLog.getTypedText().getFont()->getCharWidth(' ');
	 uint16_t  nbchar=wdt/ls;




 int p=0;
 int cl=0;
 if (r[i]=='\n')
	i++;
 for (;r[i]!=0 &&  p<TEXTLOG_SIZE  ; i++)
	 {
	 if (r[i] == '\r' )
		 continue;
	 if (r[i] == '\n' )
	    {while ( cl < nbchar+20)
			{TextLogBuffer[p++]=' ';
			cl++;
			}
	    cl=0;
	    }
	 else
		    {TextLogBuffer[p++]=r[i];
	 	 	 cl++;

		    }
	 }
//	Unicode::fromUTF8(r, TextLogBuffer, TEXTLOG_SIZE);


	TextLog.setWideTextAction(WIDE_TEXT_WORDWRAP);
	TextLog.invalidate();
	TextLog.setWideTextAction(WIDE_TEXT_WORDWRAP);


	uint8_t* pip=(uint8_t*)getlocalip();
	Unicode::fromUTF8(pip, LocalIpBuffer, LOCALIP_SIZE);
	LocalIp.invalidate();

	uint8_t* pbr=(uint8_t*)getbroker();
	Unicode::fromUTF8(pbr, BrokerBuffer, BROKER_SIZE);
	LocalIp.invalidate();

	float tem=getTemperature();

	Unicode::snprintfFloat(TemperatureBuffer, TEMPERATURE_SIZE, "%1.f",tem);

	Temperature.invalidate();



				MoteurConnected1.setColor(color0)	;
				MoteurConnected2.setColor(color1)	;



			MoteurConnected1.invalidate() ;
			MoteurConnected2.invalidate() ;
}



