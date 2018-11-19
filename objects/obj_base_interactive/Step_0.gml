/// @description Insert description here
// You can write your code in this editor

if(!layer_has_instance("Textbox_Layer", obj_textbox)) {
	if((place_meeting(x,y, obj_player) || object_dragging)) {
		if(mouse_check_button_pressed(mb_right)){
			if(myTextbox == noone){
				myTextbox = instance_create_layer(room_width/2 - 200, room_height/2 + 150 , "Textbox_Layer", obj_textbox);
				myTextbox.text = myText;
				myTextbox.creator = self;
				myTextbox.name = myName;
				myTextbox.color = myColor;
		
				myAvatar = instance_create_layer(room_width/2 - 400, room_height/2 + 150, "avatar_layer", obj_avatar);
				object_set_sprite(obj_ava, mySprite);
				instance_create_depth(myAvatar.x + 5, myAvatar.y + 10, -1, obj_ava);
			}
		}
	
	} else {
		instance_destroy(myTextbox);
		myTextbox = noone;
		instance_destroy(myAvatar);
		myAvatar = noone;
	}
}
