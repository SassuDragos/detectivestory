/// @description Insert description here
// You can write your code in this editor
if(!canClick) {
	return;	
}

if(textBoxObject.char_count == string_length(textBoxObject.text_body) &&
	array_length_1d(choiceBoxObject.choice_list) < 2) {
	move_to_next_dialog_step();
} else {
	textBoxObject.char_count = string_length(textBoxObject.text_body);
}