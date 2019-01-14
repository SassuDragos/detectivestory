/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var result = [];

obj_fade_tutorial.inactive = false;

var dialog_body = ["Good, looks like you've got the hang of it!",
				"Now let's try picking up objects",
				"Try to pick that pack of cigarettes on this table by clicking on it"];
var dialog_character = [obj_partner_detective,
					obj_partner_detective,
					obj_partner_detective];
var dialog_behaviour_sequence = [0,0,show_mouse_animation_2];

result[0] = dialog_body;
result[1] = dialog_character;
//result[2] = choice_option_sequence;
result[3] = dialog_behaviour_sequence;
return result