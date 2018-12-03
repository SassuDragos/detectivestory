/// @function action_discuss(dialog_holder)

var dialogHolder = argument0;

instantiate_dialog_engine(	dialogHolder.body_text_sequence,
							dialogHolder.charaters_sequence,
							dialogHolder.choice_option_sequence,
							dialogHolder.dialog_resolver);        

