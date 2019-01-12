/// @description Insert description here
// You can write your code in this editor
if(!canClick) {
	return;	
}

if(textBoxObject.char_count == string_length(textBoxObject.text_body) &&
	ds_list_size(choiceBoxObject.choice_list) < 2) {
	move_to_next_dialog_step();
} else {
	textBoxObject.char_count = string_length(textBoxObject.text_body);
}