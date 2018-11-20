/// @function setup_dialog_data

// To be called exclusively from dialog_eningine
/*
	argument[0]: String = Text for dialog sequence
	argument[1]: Object: Interactor = Character for dialog sequence (HAVE TITLE + AVATAR)
	argument[2]: String = Choice dialog sequence (seach choice is eparated by '@')
	argument[3]: TextBox 
	argument[4]: AvatarBox
*/
var dialogText = argument[0];
var dialogCharacterId = argument[1];
var dialogChoice = argument[2];
var textBoxObject = argument[3];
var avatarBoxObject = argument[4];

textBoxObject.text_body = dialogText;
textBoxObject.text_line_height = string_height(dialogText);
var avatarSprintId = noone;

//TODO
with (dialogCharacterId) {
	other.textBoxObject.name = name;
	other.textBoxObject.color = color;		
	other.avatarBoxObject.sprite_index = avatar;
}

/// @function create_dialog_engine
/*
	argument[0]: list(String) = List with text for dialog sequence
	argument[1]: list(Object: Interactor) = List with characters for each dialog sequence (HAVE TITLE + AVATAR)
	argument[2]: list(String) = List with choices for each dialog sequence (separated by '@')
*/
/*
dialogTextSequence = argument[0];
dialogCharacterSequence = argument[1];
dialogChoiceSequence = argument[2];

myTextbox = instance_create_layer(room_width/2 - 200, room_height/2 + 150 , "Textbox_Layer", obj_textbox);

myTextbox.textBody = dialogTextSequence[0];
myTextbox.name = dialogCharacterSequence[0].myName;
myTextbox.color = dialogCharacterSequence[0].myColor;
		
myAvatar = instance_create_layer(room_width/2 - 400, room_height/2 + 150, "avatar_layer", obj_avatar);
		
object_set_sprite(obj_ava, dialogCharacterSequence[0].myAvatar);
instance_create_depth(myAvatar.x + 5, myAvatar.y + 10, -1, obj_ava);

if (dialogChoiceSequence[0] != "") {
	myChoiceList = instance_create_layer(room_width/2 - 200, room_height/2 + myTextbox.sprite_height  , "Dialog_choice_Layer", obj_textbox_choice_list);
}


*/
