/// @function create_event_initialise_dialog_owner

/*
	argument[0]: Instance object to become dialog owner.
	argument[1]: ([LIST]: String) Instance text list for dialogue body display.
	argument[2]: ([LIST]: String) Instance character list for displaying dialogue character info(avatar, name...).
	argument[3]: ([Matrix]: String) Instance choice option matrix (for each dialogue instance, a list of options). 
*/


//@REQUIRED: Do not forget to initialise dialog_owner as CHARACTER (use create_event_initialise_character)!

var dialog_owner = argument[0];

if(argument_count > 4) {
	var stage = ds_map_find_value(global.character_stage, dialog_owner.object_index);
	if(is_undefined(stage) || stage != argument[4]) {
		if(argument_count > 3) {
			ds_map_set(global.dialog_choices, dialog_owner.object_index, argument[3]);
		}
		ds_map_set(global.character_stage, dialog_owner.object_index, argument[4]);	
	}
}

var characterDialogData = script_execute(argument[1]);

with(dialog_owner) {
    body_text_sequence = characterDialogData[0];
    charaters_sequence = characterDialogData[1];
    choice_option_sequence = characterDialogData[2];
	if(array_length_1d(characterDialogData) > 3) {
		behaviour_sequence = characterDialogData[3];
	}
    dialog_resolver = argument[2];
}

