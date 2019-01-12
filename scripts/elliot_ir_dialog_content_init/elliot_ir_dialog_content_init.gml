/// @function clementine_1_dialog_initial_sequence()

// Returns initial dialog sequence for Peach
// [ bodies, characters, choices]

var dialog_body = [];
var dialog_character = [];
var choice_option_sequence = [];
var result = [];

dialog_body[0] = "So, detective... Is there any reason to have me in this kind of sad and dark dungeon?";
dialog_character[0] = obj_elliot;
choice_option_sequence[0] = ds_map_find_value(global.character_stage, obj_elliot) == "ir" ? "default" : elliot_ir_default_choices();

result[0] = dialog_body;
result[1] = dialog_character;
result[2] = choice_option_sequence;
return result