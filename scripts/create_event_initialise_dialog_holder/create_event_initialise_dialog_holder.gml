/// @function create_event_initialise_dialog_owner

/*
	argument[0]: Instance object to become dialog owner.
	argument[1]: ([LIST]: String) Instance text list for dialogue body display.
	argument[2]: ([LIST]: String) Instance character list for displaying dialogue character info(avatar, name...).
	argument[3]: ([Matrix]: String) Instance choice option matrix (for each dialogue instance, a list of options). 
*/


//@REQUIRED: Do not forget to initialise dialog_owner as CHARACTER (use create_event_initialise_character)!

dialog_owner = argument[0];

dialog_owner.body_text_sequence = argument[1];
dialog_owner.charaters_sequence = argument[2];
dialog_owner.choice_option_sequence = argument[3];

//[TODO] TEMPORARY. SHOULD BE IN INIT ROOM
variable_global_set("dialog_engine", noone);
