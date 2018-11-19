/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y, obj_player)){
	if(mouse_check_button_pressed(mb_right)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(obj_player.x - 200, obj_player.y + 150 , "Textbox_Layer", obj_textbox);
			myTextbox.text = myText;
			myTextbox.creator = self;
			myTextbox.name = myName;
			myTextbox.color = myColor;
		
			myAvatar = instance_create_layer(obj_player.x - 400, obj_player.y + 150, "avatar_layer", obj_avatar);
		
			object_set_sprite(obj_ava, mySprite);
			instance_create_depth(obj_player.x - 300, obj_player.y + 250, -1, obj_ava);
		}
	}
} else {
	instance_destroy(myTextbox);
	myTextbox = noone;
	instance_destroy(myAvatar);
	myAvatar = noone;
}
