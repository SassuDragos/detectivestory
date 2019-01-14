/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var result = [];

obj_fade_tutorial.inactive = false;

var dialog_body = ["So every game should start with a tutorial right?",
				"In this world, the mouse/trackpad is your bow. And the left button is your arrow",
				"To move around, click in the destination spot you want to go to"];
var dialog_character = [obj_partner_detective,
					obj_partner_detective,
					obj_partner_detective];
var dialog_behaviour_sequence = [0,0,show_mouse_animation_1];

result[0] = dialog_body;
result[1] = dialog_character;
//result[2] = choice_option_sequence;
result[3] = dialog_behaviour_sequence;
return result