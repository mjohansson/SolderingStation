//--------------------------------------------------------------------------
//send Command to OLED
//--------------------------------------------------------------------------
void oled_Command_25664(unsigned char Data)
{
GPIO_Write(GPIOB, Data);//6800 mode
GPIO_ResetBits(GPIOC, RS);
GPIO_ResetBits(GPIOC, CS1);
GPIO_ResetBits(GPIOC, RW);
GPIO_SetBits(GPIOC, E1);
OLED_uDelay(100);
GPIO_ResetBits(GPIOC, E1);
OLED_uDelay(100);
GPIO_SetBits(GPIOC, RW);
GPIO_SetBits(GPIOC, CS1);
GPIO_SetBits(GPIOC, RS);

//unsigned char i;	  //3-wire serial mode
//GPIO_ResetBits(GPIOC, RS);
//GPIO_ResetBits(GPIOC, RW);
//GPIO_ResetBits(GPIOC, E1);
//GPIO_ResetBits(GPIOC, CS1);
//
//GPIO_ResetBits(GPIOB, GPIO_Pin_1);//D/C = Command
//GPIO_ResetBits(GPIOB, GPIO_Pin_0);
//GPIO_SetBits(GPIOB, GPIO_Pin_0);
//	for (i=0; i<8; i++)
//	{
//		GPIO_ResetBits(GPIOB, GPIO_Pin_0);
//		if((Data&0x80)>>7==1){GPIO_SetBits(GPIOB, GPIO_Pin_1);}
//		else {GPIO_ResetBits(GPIOB, GPIO_Pin_1);}
//		Data = Data << 1;
//		GPIO_SetBits(GPIOB, GPIO_Pin_0);
//	}
//GPIO_SetBits(GPIOC, CS1); //end 3-wire serial mode

//unsigned char i;	  //begin 4-wire serial mode
//GPIO_ResetBits(GPIOC, RS);
//GPIO_ResetBits(GPIOC, RW);
//GPIO_ResetBits(GPIOC, E1);
//GPIO_ResetBits(GPIOC, CS1);
//
//	for (i=0; i<8; i++)
//	{
//		GPIO_ResetBits(GPIOB, GPIO_Pin_0);
//		if((Data&0x80)>>7==1){GPIO_SetBits(GPIOB, GPIO_Pin_1);}
//		else {GPIO_ResetBits(GPIOB, GPIO_Pin_1);}
//		Data = Data << 1;
//		GPIO_SetBits(GPIOB, GPIO_Pin_0);
//	}
//GPIO_SetBits(GPIOC, RS);
//GPIO_SetBits(GPIOC, CS1); //end 4-wire serial mode

}

//--------------------------------------------------------------------------
//send Data to OLED
//--------------------------------------------------------------------------
void oled_Data_25664(unsigned char Data)
{
GPIO_Write(GPIOB, Data);//6800 mode
GPIO_SetBits(GPIOC, RS);
GPIO_ResetBits(GPIOC, CS1);
GPIO_ResetBits(GPIOC, RW);
GPIO_SetBits(GPIOC, E1);
OLED_uDelay(100);
GPIO_ResetBits(GPIOC, E1);
OLED_uDelay(100);
GPIO_SetBits(GPIOC, RW);
GPIO_SetBits(GPIOC, CS1);
GPIO_SetBits(GPIOC, RS);

//unsigned char i;	//3-wire serial mode
//GPIO_ResetBits(GPIOC, RS);
//GPIO_ResetBits(GPIOC, RW);
//GPIO_ResetBits(GPIOC, E1);
//GPIO_ResetBits(GPIOC, CS1);
//
//GPIO_SetBits(GPIOB, GPIO_Pin_1);//D/C = Data
//GPIO_ResetBits(GPIOB, GPIO_Pin_0);
//GPIO_SetBits(GPIOB, GPIO_Pin_0);
//	for (i=0; i<8; i++)
//	{
//		GPIO_ResetBits(GPIOB, GPIO_Pin_0);
//		if((Data&0x80)>>7==1){GPIO_SetBits(GPIOB, GPIO_Pin_1);}
//		else {GPIO_ResetBits(GPIOB, GPIO_Pin_1);}
//		Data = Data << 1;
//		GPIO_SetBits(GPIOB, GPIO_Pin_0);
//	}
//GPIO_SetBits(GPIOC, CS1); //end 3-wire serial mode

//unsigned char i;	 //begin 4-wire serial mode
//GPIO_SetBits(GPIOC, RS);
//GPIO_ResetBits(GPIOC, RW);
//GPIO_ResetBits(GPIOC, E1);
//GPIO_ResetBits(GPIOC, CS1);
//
//	for (i=0; i<8; i++)
//	{
//		GPIO_ResetBits(GPIOB, GPIO_Pin_0);
//		if((Data&0x80)>>7==1){GPIO_SetBits(GPIOB, GPIO_Pin_1);}
//		else {GPIO_ResetBits(GPIOB, GPIO_Pin_1);}
//		Data = Data << 1;
//		GPIO_SetBits(GPIOB, GPIO_Pin_0);
//	}
//GPIO_SetBits(GPIOC, RS);
//GPIO_SetBits(GPIOC, CS1); //end 4-wire serial mode

}


//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Column_Address_25664(unsigned char a, unsigned char b)
{
	oled_Command_25664(0x15);			// Set Column Address
	oled_Data_25664(a);				//   Default => 0x00
	oled_Data_25664(b);				//   Default => 0x77
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Row_Address_25664(unsigned char a, unsigned char b)
{
	oled_Command_25664(0x75);			// Set Row Address
	oled_Data_25664(a);				//   Default => 0x00
	oled_Data_25664(b);				//   Default => 0x7F
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Write_RAM_25664()
{
	oled_Command_25664(0x5C);			// Enable MCU to Write into RAM
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Remap_Format_25664(unsigned char d)
{
	oled_Command_25664(0xA0);			// Set Re-Map / Dual COM Line Mode
	oled_Data_25664(d);				//   Default => 0x40
						//     Horizontal Address Increment
						//     Column Address 0 Mapped to SEG0
						//     Disable Nibble Remap
						//     Scan from COM0 to COM[N-1]
						//     Disable COM Split Odd Even
	oled_Data_25664(0x11);			//   Default => 0x01 (Disable Dual COM Mode)
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Start_Line_25664(unsigned char d)
{
	oled_Command_25664(0xA1);			// Set Vertical Scroll by RAM
	oled_Data_25664(d);				//   Default => 0x00
}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------
void Set_Display_Offset_25664(unsigned char d)
{
	oled_Command_25664(0xA2);			// Set Vertical Scroll by Row
	oled_Data_25664(d);				//   Default => 0x00
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Display_Mode_25664(unsigned char d)
{
	oled_Command_25664(0xA4|d);			// Set Display Mode
						//   Default => 0xA4
						//     0xA4 (0x00) => Entire Display Off, All Pixels Turn Off
						//     0xA5 (0x01) => Entire Display On, All Pixels Turn On at GS Level 15
						//     0xA6 (0x02) => Normal Display
						//     0xA7 (0x03) => Inverse Display
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Partial_Display_25664(unsigned char a, unsigned char b, unsigned char c)
{
	oled_Command_25664(0xA8|a);
						// Default => 0x8F
						//   Select Internal Booster at Display On
	if(a == 0x00)
	{
		oled_Data_25664(b);
		oled_Data_25664(c);
	}
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Function_Selection_25664(unsigned char d)
{
	oled_Command_25664(0xAB);			// Function Selection
	oled_Data_25664(d);				//   Default => 0x01
						//     Enable Internal VDD Regulator
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Display_On_Off_25664(unsigned char d)
{
	oled_Command_25664(0xAE|d);			// Set Display On/Off
						//   Default => 0xAE
						//     0xAE (0x00) => Display Off (Sleep Mode On)
						//     0xAF (0x01) => Display On (Sleep Mode Off)
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Phase_Length_25664(unsigned char d)
{
	oled_Command_25664(0xB1);			// Phase 1 (Reset) & Phase 2 (Pre-Charge) Period Adjustment
	oled_Data_25664(d);				//   Default => 0x74 (7 Display Clocks [Phase 2] / 9 Display Clocks [Phase 1])
						//     D[3:0] => Phase 1 Period in 5~31 Display Clocks
						//     D[7:4] => Phase 2 Period in 3~15 Display Clocks
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Display_Clock_25664(unsigned char d)
{
	oled_Command_25664(0xB3);			// Set Display Clock Divider / Oscillator Frequency
	oled_Data_25664(d);				//   Default => 0xD0
						//     A[3:0] => Display Clock Divider
						//     A[7:4] => Oscillator Frequency
}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------
void Set_Display_Enhancement_A_25664(unsigned char a, unsigned char b)
{
	oled_Command_25664(0xB4);			// Display Enhancement
	oled_Data_25664(0xA0|a);			//   Default => 0xA2
						//     0xA0 (0x00) => Enable External VSL
						//     0xA2 (0x02) => Enable Internal VSL (Kept VSL Pin N.C.)
	oled_Data_25664(0x05|b);			//   Default => 0xB5
						//     0xB5 (0xB0) => Normal
						//     0xFD (0xF8) => Enhance Low Gray Scale Display Quality
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_GPIO_25664(unsigned char d)
{
	oled_Command_25664(0xB5);			// General Purpose IO
	oled_Data_25664(d);				//   Default => 0x0A (GPIO Pins output Low Level.)
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Precharge_Period_25664(unsigned char d)
{
	oled_Command_25664(0xB6);			// Set Second Pre-Charge Period
	oled_Data_25664(d);				//   Default => 0x08 (8 Display Clocks)
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Precharge_Voltage_25664(unsigned char d)
{
	oled_Command_25664(0xBB);			// Set Pre-Charge Voltage Level
	oled_Data_25664(d);				//   Default => 0x17 (0.50*VCC)
}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------
void Set_VCOMH_25664(unsigned char d)
{
	oled_Command_25664(0xBE);			// Set COM Deselect Voltage Level
	oled_Data_25664(d);				//   Default => 0x04 (0.80*VCC)
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Contrast_Current_25664(unsigned char d)
{
	oled_Command_25664(0xC1);			// Set Contrast Current
	oled_Data_25664(d);				//   Default => 0x7F
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Master_Current_25664(unsigned char d)
{
	oled_Command_25664(0xC7);			// Master Contrast Current Control
	oled_Data_25664(d);				//   Default => 0x0f (Maximum)
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Multiplex_Ratio_25664(unsigned char d)
{
	oled_Command_25664(0xCA);			// Set Multiplex Ratio
	oled_Data_25664(d);				//   Default => 0x7F (1/128 Duty)
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Display_Enhancement_B_25664(unsigned char d)
{
	oled_Command_25664(0xD1);			// Display Enhancement
	oled_Data_25664(0x82|d);			//   Default => 0xA2
						//     0x82 (0x00) => Reserved
						//     0xA2 (0x20) => Normal
	oled_Data_25664(0x20);
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Set_Command_Lock_25664(unsigned char d)
{
	oled_Command_25664(0xFD);			// Set Command Lock
	oled_Data_25664(0x12|d);			//   Default => 0x12
						//     0x12 => Driver IC interface is unlocked from entering command.
						//     0x16 => All Commands are locked except 0xFD.
}
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void Draw_Rectangle_25664(unsigned char Data, unsigned char a, unsigned char b, unsigned char c, unsigned char d, unsigned char e)
{
unsigned char i,j,k,l;

	k=a%4;
	if(k == 0)
	{
		l=(a/4)-1;
	}
	else
	{
		l=a/4;
	}

	Set_Column_Address_25664(Shift+b,Shift+c);
	Set_Row_Address_25664(d,(d+a-1));
	Set_Write_RAM_25664();
	for(i=0;i<(c-b+1);i++)
	{
		for(j=0;j<a;j++)
		{
			oled_Data_25664(Data);
			oled_Data_25664(Data);
		}
	}

	Set_Column_Address_25664(Shift+(c-l),Shift+c);
	Set_Row_Address_25664(d+a,e-a);
	Set_Write_RAM_25664();
	for(i=0;i<(e-d+1);i++)
	{
		for(j=0;j<(l+1);j++)
		{
			if(j == 0)
			{
				switch(k)
				{
					case 0:
						oled_Data_25664(Data);
						oled_Data_25664(Data);
						break;
					case 1:
						oled_Data_25664(0x00);
						oled_Data_25664(Data&0x0F);
						break;
					case 2:
						oled_Data_25664(0x00);
						oled_Data_25664(Data);
						break;
					case 3:
						oled_Data_25664(Data&0x0F);
						oled_Data_25664(Data);
						break;
				}
			}
			else
			{
						oled_Data_25664(Data);
						oled_Data_25664(Data);
			}
		}
	}

	Set_Column_Address_25664(Shift+b,Shift+c);
	Set_Row_Address_25664((e-a+1),e);
	Set_Write_RAM_25664();
	for(i=0;i<(c-b+1);i++)
	{
		for(j=0;j<a;j++)
		{
			oled_Data_25664(Data);
			oled_Data_25664(Data);
		}
	}

	Set_Column_Address_25664(Shift+b,Shift+(b+l));
	Set_Row_Address_25664(d+a,e-a);
	Set_Write_RAM_25664();
	for(i=0;i<(e-d+1);i++)
	{
		for(j=0;j<(l+1);j++)
		{
			if(j == l)
			{
				switch(k)
				{
					case 0:
						oled_Data_25664(Data);
						oled_Data_25664(Data);
						break;
					case 1:
						oled_Data_25664(Data&0xF0);
						oled_Data_25664(0x00);
						break;
					case 2:
						oled_Data_25664(Data);
						oled_Data_25664(0x00);
						break;
					case 3:
						oled_Data_25664(Data);
						oled_Data_25664(Data&0xF0);
						break;
				}
			}
			else
			{
						oled_Data_25664(Data);
						oled_Data_25664(Data);
			}
		}
	}
}


//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Show Regular Pattern (Full Screen)
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void Fill_RAM_25664(unsigned char Data)
{
unsigned char i,j;

	Set_Column_Address_25664(0x00,0x77);
	Set_Row_Address_25664(0x00,0x7F);
	Set_Write_RAM_25664();

	for(i=0;i<128;i++)
	{
		for(j=0;j<120;j++)
		{
			oled_Data_25664(Data);
			oled_Data_25664(Data);
		}
	}
}


//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Show Regular Pattern (Partial or Full Screen)
//
//    a: Column Address of Start
//    b: Column Address of End (Total Columns Devided by 4)
//    c: Row Address of Start
//    d: Row Address of End
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void Fill_Block_25664(unsigned char Data, unsigned char a, unsigned char b, unsigned char c, unsigned char d)
{
unsigned char i,j;
	
	Set_Column_Address_25664(Shift+a,Shift+b);
	Set_Row_Address_25664(c,d);
	Set_Write_RAM_25664();

	for(i=0;i<(d-c+1);i++)
	{
		for(j=0;j<(b-a+1);j++)
		{
			oled_Data_25664(Data);
			oled_Data_25664(Data);
		}
	}
}


//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Show Checkboard (Full Screen)
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void Checkerboard_25664()
{
unsigned char i,j;
	
	Set_Column_Address_25664(0x00,0x77);
	Set_Row_Address_25664(0x00,0x7F);
	Set_Write_RAM_25664();

	for(i=0;i<64;i++)
	{
		for(j=0;j<120;j++)
		{
			oled_Data_25664(0xF0);
			oled_Data_25664(0xF0);
		}
		for(j=0;j<120;j++)
		{
			oled_Data_25664(0x0F);
			oled_Data_25664(0x0F);
		}
	}
}


//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Show Gray Scale Bar (Full Screen)
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void Grayscale_25664()
{
Max_Column = 0x3F;
Max_Row = 0x3F;
	// Level 16 => Column 1~16
		Fill_Block_25664(0xFF,0x00,0x03,0x00,Max_Row);

	// Level 15 => Column 17~32
		Fill_Block_25664(0xEE,0x04,0x07,0x00,Max_Row);

	// Level 14 => Column 33~48
		Fill_Block_25664(0xDD,0x08,0x0B,0x00,Max_Row);

	// Level 13 => Column 49~64
		Fill_Block_25664(0xCC,0x0C,0x0F,0x00,Max_Row);

	// Level 12 => Column 65~80
		Fill_Block_25664(0xBB,0x10,0x13,0x00,Max_Row);

	// Level 11 => Column 81~96
		Fill_Block_25664(0xAA,0x14,0x17,0x00,Max_Row);

	// Level 10 => Column 97~112
		Fill_Block_25664(0x99,0x18,0x1B,0x00,Max_Row);

	// Level 9 => Column 113~128
		Fill_Block_25664(0x88,0x1C,0x1F,0x00,Max_Row);

	// Level 8 => Column 129~144
		Fill_Block_25664(0x77,0x20,0x23,0x00,Max_Row);

	// Level 7 => Column 145~160
		Fill_Block_25664(0x66,0x24,0x27,0x00,Max_Row);

	// Level 6 => Column 161~176
		Fill_Block_25664(0x55,0x28,0x2B,0x00,Max_Row);

	// Level 5 => Column 177~192
		Fill_Block_25664(0x44,0x2C,0x2F,0x00,Max_Row);

	// Level 4 => Column 193~208
		Fill_Block_25664(0x33,0x30,0x33,0x00,Max_Row);

	// Level 3 => Column 209~224
		Fill_Block_25664(0x22,0x34,0x37,0x00,Max_Row);

	// Level 2 => Column 225~240
		Fill_Block_25664(0x11,0x38,0x3B,0x00,Max_Row);

	// Level 1 => Column 241~256
		Fill_Block_25664(0x00,0x3C,Max_Column,0x00,Max_Row);
}


//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Show Character (5x7)
//
//    a: Database
//    b: Ascii
//    c: Start X Address
//    d: Start Y Address
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void Show_Font57_25664(unsigned char a, unsigned char b, unsigned char c, unsigned char d)
{
unsigned char *Src_Pointer=0;
unsigned char i,Font,MSB_1,LSB_1,MSB_2,LSB_2;

	switch(a)
	{
		case 1:
			Src_Pointer=&Ascii_1[(b-1)][0];
			break;
		case 2:
			//Src_Pointer=&Ascii_2[(b-1)][0];
			break;
	}

	Set_Remap_Format_25664(0x15);
	for(i=0;i<=1;i++)
	{
		MSB_1=*Src_Pointer;
		Src_Pointer++;
		if(i == 1)
		{
			LSB_1=0x00;
			MSB_2=0x00;
			LSB_2=0x00;
		}
		else
		{
			LSB_1=*Src_Pointer;
			Src_Pointer++;
			MSB_2=*Src_Pointer;
			Src_Pointer++;
			LSB_2=*Src_Pointer;
			Src_Pointer++;
		}
 		Set_Column_Address_25664(Shift+c,Shift+c);
		Set_Row_Address_25664(d,d+7);
		Set_Write_RAM_25664();

		Font=((MSB_1&0x01)<<4)|(LSB_1&0x01);
		Font=Font|(Font<<1)|(Font<<2)|(Font<<3);
		oled_Data_25664(Font);
		Font=((MSB_2&0x01)<<4)|(LSB_2&0x01);
		Font=Font|(Font<<1)|(Font<<2)|(Font<<3);
		oled_Data_25664(Font);

		Font=((MSB_1&0x02)<<3)|((LSB_1&0x02)>>1);
		Font=Font|(Font<<1)|(Font<<2)|(Font<<3);
		oled_Data_25664(Font);
		Font=((MSB_2&0x02)<<3)|((LSB_2&0x02)>>1);
		Font=Font|(Font<<1)|(Font<<2)|(Font<<3);
		oled_Data_25664(Font);

		Font=((MSB_1&0x04)<<2)|((LSB_1&0x04)>>2);
		Font=Font|(Font<<1)|(Font<<2)|(Font<<3);
		oled_Data_25664(Font);
		Font=((MSB_2&0x04)<<2)|((LSB_2&0x04)>>2);
		Font=Font|(Font<<1)|(Font<<2)|(Font<<3);
		oled_Data_25664(Font);

		Font=((MSB_1&0x08)<<1)|((LSB_1&0x08)>>3);
		Font=Font|(Font<<1)|(Font<<2)|(Font<<3);
		oled_Data_25664(Font);
		Font=((MSB_2&0x08)<<1)|((LSB_2&0x08)>>3);
		Font=Font|(Font<<1)|(Font<<2)|(Font<<3);
		oled_Data_25664(Font);

		Font=((MSB_1&0x10)<<3)|((LSB_1&0x10)>>1);
		Font=Font|(Font>>1)|(Font>>2)|(Font>>3);
		oled_Data_25664(Font);
		Font=((MSB_2&0x10)<<3)|((LSB_2&0x10)>>1);
		Font=Font|(Font>>1)|(Font>>2)|(Font>>3);
		oled_Data_25664(Font);

		Font=((MSB_1&0x20)<<2)|((LSB_1&0x20)>>2);
		Font=Font|(Font>>1)|(Font>>2)|(Font>>3);
		oled_Data_25664(Font);
		Font=((MSB_2&0x20)<<2)|((LSB_2&0x20)>>2);
		Font=Font|(Font>>1)|(Font>>2)|(Font>>3);
		oled_Data_25664(Font);

		Font=((MSB_1&0x40)<<1)|((LSB_1&0x40)>>3);
		Font=Font|(Font>>1)|(Font>>2)|(Font>>3);
		oled_Data_25664(Font);
		Font=((MSB_2&0x40)<<1)|((LSB_2&0x40)>>3);
		Font=Font|(Font>>1)|(Font>>2)|(Font>>3);
		oled_Data_25664(Font);

		Font=(MSB_1&0x80)|((LSB_1&0x80)>>4);
		Font=Font|(Font>>1)|(Font>>2)|(Font>>3);
		oled_Data_25664(Font);
		Font=(MSB_2&0x80)|((LSB_2&0x80)>>4);
		Font=Font|(Font>>1)|(Font>>2)|(Font>>3);
		oled_Data_25664(Font);

		c++;
	}
	Set_Remap_Format_25664(0x14);
}


//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Show String
//
//    a: Database
//    b: Start X Address
//    c: Start Y Address
//    * Must write "0" in the end...
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void Show_String_25664(unsigned char a, unsigned char *Data_Pointer, unsigned char b, unsigned char c)
{
unsigned char *Src_Pointer;

	Src_Pointer=Data_Pointer;
	Show_Font57_25664(1,96,b,c);			// No-Break Space
						//   Must be written first before the string start...

	while(1)
	{
		Show_Font57_25664(a,*Src_Pointer,b,c);
		Src_Pointer++;
		b+=2;
		if(*Src_Pointer == 0) break;
	}
}


//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Show Pattern (Partial or Full Screen)
//
//    a: Column Address of Start
//    b: Column Address of End (Total Columns Devided by 4)
//    c: Row Address of Start
//    d: Row Address of End
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void Show_Pattern_25664(unsigned char *Data_Pointer, unsigned char a, unsigned char b, unsigned char c, unsigned char d)
{
unsigned char *Src_Pointer;
unsigned char i,j;
	
	Src_Pointer=Data_Pointer;
	Set_Column_Address_25664(Shift+a,Shift+b);
	Set_Row_Address_25664(c,d);
	Set_Write_RAM_25664();

	for(i=0;i<(d-c+1);i++)
	{
		for(j=0;j<(b-a+1);j++)
		{
			oled_Data_25664(*Src_Pointer);
			Src_Pointer++;
			oled_Data_25664(*Src_Pointer);
			Src_Pointer++;
		}
	}
}

//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Gray Scale Table Setting (Full Screen)
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void Set_Gray_Scale_Table_25664()
{
	oled_Command_25664(0xB8);			// Set Gray Scale Table
	oled_Data_25664(0x0C);			//   Gray Scale Level 1
	oled_Data_25664(0x18);			//   Gray Scale Level 2
	oled_Data_25664(0x24);			//   Gray Scale Level 3
	oled_Data_25664(0x30);			//   Gray Scale Level 4
	oled_Data_25664(0x3C);			//   Gray Scale Level 5
	oled_Data_25664(0x48);			//   Gray Scale Level 6
	oled_Data_25664(0x54);			//   Gray Scale Level 7
	oled_Data_25664(0x60);			//   Gray Scale Level 8
	oled_Data_25664(0x6C);			//   Gray Scale Level 9
	oled_Data_25664(0x78);			//   Gray Scale Level 10
	oled_Data_25664(0x84);			//   Gray Scale Level 11
	oled_Data_25664(0x90);			//   Gray Scale Level 12
	oled_Data_25664(0x9C);			//   Gray Scale Level 13
	oled_Data_25664(0xA8);			//   Gray Scale Level 14
	oled_Data_25664(0xB4);			//   Gray Scale Level 15

	oled_Command_25664(0x00);			// Enable Gray Scale Table
}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------
void Set_Linear_Gray_Scale_Table_25664()
{
	oled_Command_25664(0xB9);			// Set Default Linear Gray Scale Table
}


//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Initialization
//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void OLED_Init_25664()
{
unsigned char i;
/*GPIO_ResetBits(GPIOC, RES);	
	for(i=0;i<200;i++)
	{
		OLED_uDelay(200);
	} */
	GPIO_SetBits(GPIOC, RES); 
	OLED_Delay(10000);

	Set_Command_Lock_25664(0x12);			// Unlock Basic Commands (0x12/0x16)
	Set_Display_On_Off_25664(0x00);		// Display Off (0x00/0x01)
	Set_Column_Address_25664(0x1C,0x5B);
	Set_Row_Address_25664(0x00,0x3F);
	Set_Display_Clock_25664(0x91);		// Set Clock as 80 Frames/Sec
	Set_Multiplex_Ratio_25664(0x3F);		// 1/64 Duty (0x0F~0x3F)
	Set_Display_Offset_25664(0x00);		// Shift Mapping RAM Counter (0x00~0x3F)
	Set_Start_Line_25664(0x00);			// Set Mapping RAM Display Start Line (0x00~0x7F)
	Set_Remap_Format_25664(0x14);			// Set Horizontal Address Increment
						//     Column Address 0 Mapped to SEG0
						//     Disable Nibble Remap
						//     Scan from COM[N-1] to COM0
						//     Disable COM Split Odd Even
						//     Enable Dual COM Line Mode
	Set_GPIO_25664(0x00);				// Disable GPIO Pins Input
	Set_Function_Selection_25664(0x01);		// Enable Internal VDD Regulator
	Set_Display_Enhancement_A_25664(0xA0,0xFD);	// Enable External VSL 
	Set_Contrast_Current_25664(0x9F);		// Set Segment Output Current
	Set_Master_Current_25664(0x0F);		// Set Scale Factor of Segment Output Current Control
	//Set_Gray_Scale_Table();			// Set Pulse Width for Gray Scale Table
	Set_Linear_Gray_Scale_Table_25664();	//set default linear gray scale table
	Set_Phase_Length_25664(0xE2);			// Set Phase 1 as 5 Clocks & Phase 2 as 14 Clocks
	Set_Display_Enhancement_B_25664(0x20);	// Enhance Driving Scheme Capability (0x00/0x20)
	Set_Precharge_Voltage_25664(0x1F);		// Set Pre-Charge Voltage Level as 0.60*VCC
	Set_Precharge_Period_25664(0x08);		// Set Second Pre-Charge Period as 8 Clocks
	Set_VCOMH_25664(0x07);			// Set Common Pins Deselect Voltage Level as 0.86*VCC
	Set_Display_Mode_25664(0x02);			// Normal Display Mode (0x00/0x01/0x02/0x03)
	Set_Partial_Display_25664(0x01,0x00,0x00);	// Disable Partial Display
	Set_Display_On_Off_25664(0x01);
}

//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
//  Demonstration
//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
int oled_25664(void)
{

OLED_Init_25664();

Set_Column_Address_25664(0x1c,0x5b);
Set_Row_Address_25664(0x00,0x3F);
Set_Write_RAM_25664();
counter = 0;
write_data = 0;

for(i=0;i<64;i++){ //these loops expand the bitmap data because the bmp file is monochrome image (only ON or OFF, no grayscale)
for(j=0;j<32;j++){
	datum = Buff[counter];
	datum = ((datum >> 6) & 0x03);//move over and mask the highest 2 bits 
	if(datum == 0x03){oled_Data_25664(0xFF);} //if both bits are high, send 0xFF to OLED
	else if(datum == 0x02){oled_Data_25664(0xF0);} //if one bit is high, send 0x0F to OLED
	else if(datum == 0x01){oled_Data_25664(0x0F);}
	else oled_Data_25664(0x00); //if neither bit is high, send 0x00 to OLED

	datum = Buff[counter];
	datum = ((datum >> 4) & 0x03); //move over and mask the 3&4th bits
	if(datum == 0x03){oled_Data_25664(0xFF);}
	else if(datum == 0x02){oled_Data_25664(0xF0);}
	else if(datum == 0x01){oled_Data_25664(0x0F);}
	else oled_Data_25664(0x00);

	datum = Buff[counter];
	datum = ((datum >> 2) & 0x03); //move over and mask the 5&6th bits
	if(datum == 0x03){oled_Data_25664(0xFF);}
	else if(datum == 0x02){oled_Data_25664(0xF0);}
	else if(datum == 0x01){oled_Data_25664(0x0F);}
	else oled_Data_25664(0x00);

	datum = Buff[counter];
	datum = (datum & 0x03); //mask the lowest 2 bits
	if(datum == 0x03){oled_Data_25664(0xFF);}
	else if(datum == 0x02){oled_Data_25664(0xF0);}
	else if(datum == 0x01){oled_Data_25664(0x0F);}
	else oled_Data_25664(0x00);
	
	counter++;
	}
}

return 1;
}