/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var dialog_body = [];
var dialog_character = [];
var choice_option_sequence = [];
var result = [];

dialog_body[0] = "Hi who are you and who let you in my house?";
dialog_character[0] = obj_leonardo;

var choices = ds_list_create();
add_choice_to_list(choices, "Present yourself");

choice_option_sequence[0] = global.cluesMap[? "presented_to_leonardo"] ? "default" : choices;

result[0] = dialog_body;
result[1] = dialog_character;
result[2] = choice_option_sequence;
return result