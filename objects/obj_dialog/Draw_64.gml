/// @description Insert description here
// You can write your code in this editor
if(obj_cutscene.startgame == true){
	/*if(detective == true){
		draw_set_color(c_white);
	}else draw_set_color(merge_color(c_white, c_blue,0.4));*/
	//draw_set_font(font_game);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_game);
	draw_text(room_width / 2,room_height - 100,print);
	
	
}else{
	//draw_set_color(merge_color(c_red, c_white, 0.2));
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_name);
	draw_text(600,600,startGameStr);
	draw_set_font(fnt_title);
	draw_text(600,100,strTitle);
	
}

//letterbox
/*
draw_sprite_ext(spr_Pixel,0,0,0,1280,200,0,c_black,1);

draw_sprite_ext(spr_Pixel,0,0,520,1280,200,0,c_black,1);

 