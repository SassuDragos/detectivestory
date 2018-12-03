/// @function instantiate_partner_no_rooms_discovered_hint()

var dialogBodySequence = ["Seems like we have not found any other locations linked to this murder. I think we should keep looking around the this place."];
var dialogCharacterSequence = [obj_partner_detective];
var dialogChoiceOptionSequence = ["Got it!"];

instantiate_dialog_engine(	dialogBodySequence,
							dialogCharacterSequence,
							dialogChoiceOptionSequence,
							partner_detective_general_intervention_resolver);        
