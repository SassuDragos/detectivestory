/// @function partner_detective_no_locations_discovered()

var dialogBodySequence = ["Seems like there is a private floor upstairs and the door is locked. I think we should find someone to walk us in if we want to check it out."];
var dialogCharacterSequence = [obj_partner_detective];
var dialogChoiceOptionSequence = ["Good ideea!"];

instantiate_dialog_engine(	dialogBodySequence,
							dialogCharacterSequence,
							dialogChoiceOptionSequence,
							partner_detective_general_intervention_resolver);        
