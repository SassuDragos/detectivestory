/// @description Insert description here
// You can write your code in this editor

var ava_offset = -sprite_get_width(spr_textbox)/2;
var text_offset = sprite_get_width(spr_avatar)/2;
var y_offset = 1.25;

if(obj_player.section > 1 && obj_player.section < 9){
	if(obj_player.myTextbox == noone){
		obj_player.myTextbox = instance_create_layer(display_get_gui_width()/2 + text_offset, display_get_gui_height()/y_offset , "Textbox_Layer", obj_textbox);
		obj_player.myTextbox.text = obj_player.myText;
		obj_player.myTextbox.creator = obj_player;
		obj_player.myTextbox.name = obj_player.myName;
		obj_player.myTextbox.color = obj_player.myColor;
		
		obj_player.myAvatarBG = instance_create_layer(display_get_gui_width()/2 + ava_offset - 160, display_get_gui_height()/y_offset + 20, "ava_bg_layer", obj_avatar_bg);
		obj_player.myAvatar = instance_create_layer(display_get_gui_width()/2+ava_offset, display_get_gui_height()/y_offset, "avatar_layer", obj_avatar);
		
		
		object_set_sprite(obj_ava, obj_player.mySprite);
		instance_create_depth(display_get_gui_width()/2+ava_offset, display_get_gui_height()/y_offset, 1, obj_ava);
	}
}

alarm[1] = room_speed*2
