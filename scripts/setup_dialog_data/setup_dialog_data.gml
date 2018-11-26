/// @function setup_dialog_data

// To be called exclusively from dialog_eningine
/*
	argument[0]: String = Text for dialog sequence
	argument[1]: Object: Interactor = Character for dialog sequence (HAVE TITLE + AVATAR)
	argument[2]: String = Choice dialog sequence (seach choice is eparated by '@')
	argument[3]: TextBox 
	argument[4]: AvatarBox
	argument[5]: ChoiceBox
*/
var dialogText = argument[0];
var dialogCharacterId = argument[1];
var dialogChoices = argument[2];
var textBoxObject = argument[3];
var avatarBoxObject = argument[4];
var choiceBoxObject = argument[5];

textBoxObject.text_body = dialogText;
textBoxObject.text_line_height = string_height(dialogText);

//TODO
with (dialogCharacterId) {
	other.textBoxObject.name = name;
	other.textBoxObject.color = text_color;		
	other.avatarBoxObject.sprite_index = avatar;
}

if array_length_1d(dialogChoices) > 0 {
	choiceBoxObject.sprite_index = spr_choice_list_background;
	choiceBoxObject.choice_list = dialogChoices;
	choiceBoxObject.text_line_height = string_height(dialogText);
} else {
	choiceBoxObject.sprite_index = noone;
	choiceBoxObject.choice_list = noone;
}
