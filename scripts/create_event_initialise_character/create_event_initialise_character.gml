/// @function create_event_initialise_character

/*
	argument[0]: Instance object to become dialog owner.
	argument[1]: (String) Instance name.
	argument[2]: (Colour) Instance text color.
	argument[3]: (Sprite) Instance avatar sprite.
*/
dialog_owner = argument[0];
dialog_owner.name = argument[1];
dialog_owner.text_color = argument[2];
dialog_owner.avatar = argument[3]; 

/*
Exemple:
dialog_owner.name = "CHARACTER PLAYER";
dialog_owner.text_color = c_blue;
dialog_owner.avatar = spr_detective_avatar; 
*/
