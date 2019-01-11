/// @function setup_dialog_displayed_data

// To be called exclusively from dialog_eningine
/*
	argument[0]: String = Text for dialog sequence
	argument[1]: Object: Interactor = Character for dialog sequence (HAVE TITLE + AVATAR)
	argument[2]: String = Choice dialog sequence 
	argument[3]: TextBox 
	argument[4]: AvatarBox
	argument[5]: ChoiceBox
*/


var dialogText = argument[0];
var dialogCharacterId = argument[1];
var dialogChoices = argument[2];

global.dialog_engine.textBoxObject.text_body = dialogText;
global.dialog_engine.textBoxObject.newSequence = true;
global.dialog_engine.textBoxObject.text_line_height = string_height(dialogText);

//TODO
with (dialogCharacterId) {
    global.dialog_engine.textBoxObject.name = name;
    global.dialog_engine.textBoxObject.color = text_color;
	if(variable_instance_exists(self, "avatar")) {
		global.dialog_engine.avatarBoxObject.sprite_index = avatar;
	} else {
		global.dialog_engine.avatarBoxObject.sprite_index = noone;
	}
}

if array_length_1d(dialogChoices) > 0 {
    global.dialog_engine.choiceBoxObject.sprite_index = spr_choice_list_background;
    global.dialog_engine.choiceBoxObject.choice_list = dialogChoices;
	global.dialog_engine.choiceBoxObject.newOptions = true;
    global.dialog_engine.choiceBoxObject.text_line_height = string_height(dialogText);
	global.dialog_engine.choiceBoxObject.visible = true;
} else {
    global.dialog_engine.choiceBoxObject.visible = false;
    global.dialog_engine.choiceBoxObject.choice_list = [];
}

if(argument_count > 3) {
	script_execute(argument[3])
}
