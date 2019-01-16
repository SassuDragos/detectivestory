/// @function clementine_1_dialog_initial_sequence()

// Returns initial dialog sequence for Peach
// [ bodies, characters, choices]

var dialog_body = [];
var dialog_character = [];
var choice_option_sequence = [];
var result = [];

dialog_body[0] = "Just... take me in... make me suffer no more...";
dialog_character[0] = obj_leonardo;
choice_option_sequence[0] = "default";

result[0] = dialog_body;
result[1] = dialog_character;
result[2] = choice_option_sequence;
return result
