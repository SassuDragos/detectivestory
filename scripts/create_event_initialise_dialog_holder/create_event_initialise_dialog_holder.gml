/// @function create_event_initialise_dialog_owner

/*
	argument[0]: Instance object to become dialog owner.
	argument[1]: ([LIST]: String) Instance text list for dialogue body display.
	argument[2]: ([LIST]: String) Instance character list for displaying dialogue character info(avatar, name...).
	argument[3]: ([Matrix]: String) Instance choice option matrix (for each dialogue instance, a list of options). 
*/


//@REQUIRED: Do not forget to initialise dialog_owner as CHARACTER (use create_event_initialise_character)!

var dialog_owner = argument[0];

var characterDialogData = script_execute(argument[1]);

with(dialog_owner) {
    body_text_sequence = characterDialogData[0];
    charaters_sequence = characterDialogData[1];
    choice_option_sequence = characterDialogData[2];
    dialog_resolver = argument[2]
}

//[TODO] TEMPORARY. SHOULD BE IN INIT ROOM
variable_global_set("dialog_engine", noone);
