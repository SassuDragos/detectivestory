/// @description Insert description here
// You can write your code in this editor

object_dragging = true;

if(other.inInventory && !other.grab) {
	
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
