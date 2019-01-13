/// @description Insert description here
// You can write your code in this editor

// CHOOSE SECTION //
/*
switch (section){
	case 0:
		myText[0] = "Hmm ...."
		break;
	case 1:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "I have news, good or bad depends on the perspective ..."
		break;
	case 3:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "Picture this, a family pizzeria owned by two brothers, a normal business day, slow as usual."
		break;	
	case 5:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "The older brother’s wife enters the pizzeria when it is already closed, wanting to have a goodnight sleep she goes for the stairs that connect their apartment and the pizzeria."
		break;	
	case 7: 
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "But as she goes thru the room she looks down and finds ..."
		break;	
	case 9:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "... Her husband DEAD on the floor!!"
		myText[1] = "..."
		break;
	case 11:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "..."
		break;
	case 12:
		mySprite = spr_detective_avatar;
		myName = "Don, Detective Don Nuts";
		myColor = c_red;
		myText = [];
		myText[0] = "... Well, go on."
		break;
	case 13:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "Well she calls the police; the police calls the coroner phone, where I happen to be standing next to, and the coroner as usual answers it on speaker mode, so I hear everything and call dibs. And ta-da, we are here."
		break;
	case 15:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "So the wife says she last saw her husband an hour before and that he was fine... "
		break;
	case 16:
		mySprite = spr_detective_avatar;
		myName = "Don, Detective Don Nuts";
		myColor = c_red;
		myText = [];
		myText[0] = "Anything else, Max?"
		break;
	case 17:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "... Oh, she says that they received an unordered box... "
		break;
	case 18:
		mySprite = spr_detective_avatar;
		myName = "Don, Detective Don Nuts";
		myColor = c_red;
		myText = [];
		myText[0] = "WE WILL TAKE THAT CASE!"
		break;
	case 19:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "Yeah, thought so... WAIT, what!? Are we taking the case, really!?"
		myText[1] = "This case will be a piece of... "
		myText[2] = "... PIZZA"
		break;
	case 20:
		mySprite = spr_partner_detective_avatar;
		myName = "Max, Detective Pepsi Max";
		myColor = c_green;
		myText = [];
		myText[0] = "Damn, I though it would come on time..."
		break;
	
	case 2:
	case 4:
	case 6:
	case 8:
	case 10:
	case 14:
		mySprite = spr_detective_avatar;
		myName = "Don, Detective Don Nuts";
		myColor = c_red;
		myText = [];
		myText[0] = "..."
		break;
	
}


// WRITE TEXT //
var ava_offset = -sprite_get_width(spr_textbox)/2;
var text_offset = sprite_get_width(spr_avatar)/2;
var y_offset = 1.25;

if(keyboard_check_pressed(ord("E")) && section < 21){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(display_get_gui_width()/2 + text_offset, display_get_gui_height()/y_offset , "Textbox_Layer", obj_textbox);
		myTextbox.text = myText;
		myTextbox.creator = self;
		myTextbox.name = myName;
		myTextbox.color = myColor;
		
		myAvatarBG = instance_create_layer(display_get_gui_width()/2 + ava_offset - 160, display_get_gui_height()/y_offset + 20, "ava_bg_layer", obj_avatar_bg);
		myAvatar = instance_create_layer(display_get_gui_width()/2+ava_offset, display_get_gui_height()/y_offset, "avatar_layer", obj_avatar);
		
		
		object_set_sprite(obj_ava, mySprite);
		instance_create_depth(display_get_gui_width()/2+ava_offset, display_get_gui_height()/y_offset, 1, obj_ava);
	}
}	
*/

// MOVEMENT //

//keys
/*
W = keyboard_check(ord("W"));
A = keyboard_check(ord("A"));
S = keyboard_check(ord("S"));
D = keyboard_check(ord("D"));

NONE = keyboard_check(vk_nokey);
SPEED = keyboard_check(vk_shift);

if(W){
	y -= walkSpeed;
	image_speed = walkSpeed / 3; // makes animation smooth
	sprite_index = spr_detective_walking_up;
	
}
if(A){
	x -= walkSpeed;
	image_speed = walkSpeed / 3; // makes animation smooth
	image_xscale = 1;
	sprite_index = spr_detective_walking_left;
	
}
if(S){
	y += walkSpeed;
	image_speed = walkSpeed / 3; // makes animation smooth
	sprite_index = spr_detective_walking_down;
	
}
if(D){
	x += walkSpeed;
	image_speed = walkSpeed / 3; // makes animation smooth
	image_xscale = -1
	sprite_index = spr_detective_walking_left;
	
}
if(SPEED){
	walkSpeed = 7;
}
if(NONE){
	image_speed = 0; // makes animation smooth
	//image_index = 0;
	walkSpeed = 3.5;
}


