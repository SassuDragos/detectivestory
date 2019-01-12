/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var dialog_body = [];
var dialog_character = [];
var choice_option_sequence = [];
var result = [];

var funnyDialogBodies = ds_list_create();
ds_list_add(funnyDialogBodies, "The criminal is the creative artist; the detective only the critic.");
ds_list_add(funnyDialogBodies, "It is ridiculous to set a detective story in New York City. New York City is itself a detective story.");
ds_list_add(funnyDialogBodies, "You do not mess with the special investigators.");
ds_list_add(funnyDialogBodies, "A really good detective never gets married.");
ds_list_add(funnyDialogBodies, "Investigators have discovered that dogs can laugh, which can't be too big of a surprise.");
ds_list_add(funnyDialogBodies, "It often seems to me that's all detective work is, wiping out your false starts and beginning again.");
ds_list_add(funnyDialogBodies, "The case calls for plain, old-fashioned police leg work!");
ds_list_add(funnyDialogBodies, "It is not for me to suspect but to detect.");
ds_list_add(funnyDialogBodies, "My strong suspicion is, we got the world we deserve.");

ds_list_shuffle(funnyDialogBodies);
dialog_body[0] = ds_list_find_value(funnyDialogBodies, 0);
dialog_character[0] = obj_partner_detective;
choice_option_sequence[0] = ds_map_find_value(global.character_stage, obj_partner_detective) == "2" ? "default" : partner_detective_2_default_choices();

result[0] = dialog_body;
result[1] = dialog_character;
result[2] = choice_option_sequence;
return result