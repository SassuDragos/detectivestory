/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var dialog_body = [];
var dialog_character = [];
var choice_option_sequence = [];
var result = [];


dialog_body[0] = "So what can I do for you, detective?";
dialog_character[0] = obj_michigan;
choice_option_sequence[0] = "default";

result[0] = dialog_body;
result[1] = dialog_character;
result[2] = choice_option_sequence;
return result