global.numbercode = string(number[1])+string(number[2])+string(number[3])+string(number[4]);





if keyboard_lastkey = vk_backspace
{
	number[1]=0;
	number[2]=0;
	number[3]=0;
	number[4]=0;
}
if keyboard_check_pressed(vk_alt)
{
	number[1]=4;
	number[2]=6;
	number[3]=3;
	number[4]=5;
}
if number[1] = 0
{
	//
	if keyboard_check_pressed(vk_f1)
	{
		number[1] = 1;
	}
	if keyboard_check_pressed(vk_f2)
	{
		number[1] = 2;
	}
	if keyboard_check_pressed(vk_f3)
	{
		number[1] = 3;
	}
	if keyboard_check_pressed(vk_f4)
	{
		number[1] = 4;
	}
	if keyboard_check_pressed(vk_f5)
	{
		number[1] = 5;
	}
	if keyboard_check_pressed(vk_f6)
	{
		number[1] = 6;
	}
	if keyboard_check_pressed(vk_f7)
	{
		number[1] = 7;
	}
	if keyboard_check_pressed(vk_f8)
	{
		number[1] = 8;
	}
	if keyboard_check_pressed(vk_f9)
	{
		number[1] = 9;
	}
	
	//
}else
{
if number[1] != 0 && number[2] = 0
{
	//
	if keyboard_check_pressed(vk_f1)
	{
		number[2] = 1;
	}
	if keyboard_check_pressed(vk_f2)
	{
		number[2] = 2;
	}
	if keyboard_check_pressed(vk_f3)
	{
		number[2] = 3;
	}
	if keyboard_check_pressed(vk_f4)
	{
		number[2] = 4;
	}
	if keyboard_check_pressed(vk_f5)
	{
		number[2] = 5;
	}
	if keyboard_check_pressed(vk_f6)
	{
		number[2] = 6;
	}
	if keyboard_check_pressed(vk_f7)
	{
		number[2] = 7;
	}
	if keyboard_check_pressed(vk_f8)
	{
		number[2] = 8;
	}
	if keyboard_check_pressed(vk_f9)
	{
		number[2] = 9;
	}
	
	//
}
else
{
	if number[2] != 0 && number[3]=0
	{
	//
	if keyboard_check_pressed(vk_f1)
	{
		number[3] = 1;
	}
	if keyboard_check_pressed(vk_f2)
	{
		number[3] = 2;
	}
	if keyboard_check_pressed(vk_f3)
	{
		number[3] = 3;
	}
	if keyboard_check_pressed(vk_f4)
	{
		number[3] = 4;
	}
	if keyboard_check_pressed(vk_f5)
	{
		number[3] = 5;
	}
	if keyboard_check_pressed(vk_f6)
	{
		number[3] = 6;
	}
	if keyboard_check_pressed(vk_f7)
	{
		number[3] = 7;
	}
	if keyboard_check_pressed(vk_f8)
	{
		number[3] = 8;
	}
	if keyboard_check_pressed(vk_f9)
	{
		number[3] = 9;
	}
	
	//
	}else
	{
		if number[3] != 0 && number[4]=0
		{
			//
			if keyboard_check_pressed(vk_f1)
			{
			number[4] = 1;
			}
			if keyboard_check_pressed(vk_f2)
			{
			number[4] = 2;
			}
			if keyboard_check_pressed(vk_f3)
			{
				number[4] = 3;
			}
			if keyboard_check_pressed(vk_f4)
			{
				number[4] = 4;
			}
			if keyboard_check_pressed(vk_f5)
			{
				number[4] = 5;
			}
			if keyboard_check_pressed(vk_f6)
			{
				number[4] = 6;
			}
			if keyboard_check_pressed(vk_f7)
			{
				number[4] = 7;
			}
			if keyboard_check_pressed(vk_f8)
			{
				number[4] = 8;
			}
			if keyboard_check_pressed(vk_f9)
			{
				number[4] = 9;
			}
	
			//
		}
	}
}
}


if global.numbercode = "4635" && keyboard_check_pressed(vk_enter)
{
	unlocked = true
}
if unlocked = true
{
	room_goto(room_main);
}



