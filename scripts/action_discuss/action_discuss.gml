/// @function action_discuss(dialog_holder)

var dialogHolder = argument0;

instantiate_dialog_engine(	dialogHolder.body_text_sequence,
							dialogHolder.charaters_sequence,
							decode_choice_sequence(dialogHolder),
							variable_instance_exists(dialogHolder, "dialog_resolver") ? dialogHolder.dialog_resolver : noone);        

