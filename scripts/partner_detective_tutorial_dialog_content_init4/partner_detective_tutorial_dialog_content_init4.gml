/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var result = [];

obj_fade_tutorial.inactive = false;

var dialog_body = ["I think you've got it figured out.",
				"You can always open a discussion with me for tips or help",
				"There's also the trusty detective's eye, that if you activate, only the meaningful things will be colorful",
				"Now let's get solving things!"];
var dialog_character = [obj_partner_detective,
					obj_partner_detective,
					obj_partner_detective,
					obj_partner_detective];
var dialog_behaviour_sequence = [0,0,0,exit_tutorial];

result[0] = dialog_body;
result[1] = dialog_character;
//result[2] = choice_option_sequence;
result[3] = dialog_behaviour_sequence;
return result