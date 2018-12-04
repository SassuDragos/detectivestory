/// @function partner_detective_1_dialog_content_init()

// Returns initial dialog sequence for the Partner
// [ bodies, characters, choices]

var dialog_body = [];
var dialog_character = [];
var dialog_choices = [];
var result = [];

dialog_body[0] = "Hello detective! I came as soon as I heard about this unfortunate event... This will definetly affect the business!";
dialog_character[0] = obj_violet;

var choices = violet_1_default_choices();
for (var index = 0; index < ds_list_size(choices); index ++) {
	dialog_choices[0, index] = ds_list_find_value(choices, index);
}

result[0] = dialog_body;
result[1] = dialog_character;
result[2] = dialog_choices;
return result