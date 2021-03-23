// ***************************************************************************
// main
// ***************************************************************************

#include <vectrex.h>

// ---------------------------------------------------------------------------
// at system startup, a cold reset is performed
// cold reset: the vectrex logo is shown, all ram data is cleared
// if the reset button is pressed, then a warm reset is performed
// warm reset: skip vectrex logo and keep ram data
// after each reset, the game title screen is shown and then main() is called

// start of program code

int main(void)
{
	// local variables
	unsigned int error_code = 255;
			
	// main loop
	do
	{
		Wait_Recal();
		Intensity_5F();
		Reset0Ref();
		Print_Str_d(20, -80, "HELLO WORLD\x80");
	}
	while (error_code);
	
	// if error_code is <= 0, then a warm reset will be performed,
	// otherwise a cold reset will be performed,
	// after the reset, the game title screen appears,
	// then main() is called
	return (int) error_code;
}

// ***************************************************************************
// end of file
// ***************************************************************************
