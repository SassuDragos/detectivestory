/// @function peach_1_dialog_initial_sequence()

// Returns initial dialog sequence for Peach
// [ bodies, characters, choices]

var dialog_body = [];
var dialog_character = [];
var dialog_choices = [];
var result = [];

dialog_body[0] = "What an awful event! How could this happen to us?";
//TODO: Replace with peach
dialog_character[0] = obj_some_character;

var choices = peach_1_default_choices();
for (var index = 0; index < ds_list_size(choices); index ++) {
	dialog_choices[0, index] = ds_list_find_value(choices, index);
}



result[0] = dialog_body;
result[1] = dialog_character;
result[2] = dialog_choices;
return result