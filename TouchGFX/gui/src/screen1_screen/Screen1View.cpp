#include <gui/screen1_screen/Screen1View.hpp>
#include <stdio.h>

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






				MoteurConnected1.setColor(color0)	;
				MoteurConnected2.setColor(color1)	;



			MoteurConnected1.invalidate() ;
			MoteurConnected2.invalidate() ;
}



