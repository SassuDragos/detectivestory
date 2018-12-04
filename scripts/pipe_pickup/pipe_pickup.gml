/// @function partner_detective_no_locations_discovered()

var dialogBodySequence = ["This seems to be the murder weapon... I should take it to evidence."];
var dialogCharacterSequence = [obj_player];
var dialogChoiceOptionSequence = ["Add bent pipe to inventory"];

instantiate_dialog_engine(	dialogBodySequence,
							dialogCharacterSequence,
							dialogChoiceOptionSequence,
							pipe_dialog_resolver);        
