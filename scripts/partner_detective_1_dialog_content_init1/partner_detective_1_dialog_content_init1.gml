/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var dialog_body = [];
var dialog_character = [];
var choice_option_sequence = [];
var result = [];

dialog_body = ["So every game should start with a tutorial right?",
				"In this world, the mouse/trackpad is your bow. And the left button is your arrow"];
dialog_character = [obj_partner_detective,
					obj_partner_detective];
dialog_behaviour_sequence[1] = [show_mouse_animation_1]

result[0] = dialog_body;
result[1] = dialog_character;
result[2] = choice_option_sequence;
return result