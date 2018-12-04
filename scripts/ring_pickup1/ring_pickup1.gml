/// @function partner_detective_no_locations_discovered()

var dialogBodySequence = ["Hum... this ring doesn't fit Marcelo's style... Maybe I should take it to evidence."];
var dialogCharacterSequence = [obj_player];
var dialogChoiceOptionSequence = ["Add ring to inventory"];

instantiate_dialog_engine(	dialogBodySequence,
							dialogCharacterSequence,
							dialogChoiceOptionSequence,
							ring_dialog_resolver);        
