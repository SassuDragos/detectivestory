/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var result = [];

obj_fade_tutorial.inactive = false;

var dialog_body = ["Ah Maroboro, my favorite. Thanks",
				"You can also interact with people and some objects every step of the way",
				"Try clicking on me and opening a DISCUSSION with me"];
var dialog_character = [obj_partner_detective,
					obj_partner_detective,
					obj_partner_detective];
var dialog_behaviour_sequence = [0,0,show_mouse_animation_2];

result[0] = dialog_body;
result[1] = dialog_character;
//result[2] = choice_option_sequence;
result[3] = dialog_behaviour_sequence;
return result