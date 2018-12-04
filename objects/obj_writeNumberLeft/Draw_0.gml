draw_set_color(c_black);
draw_text_transformed(x,y,global.numbercode,4,4,0);
draw_text_transformed(3,5,"input the number with the f_keys, press enter at the end",2,2,0);

if global.rightAnswer = true
	{
		draw_text_transformed(20,50,"Right Answer, proceed to the last delivery's address",2,2,0);
	}