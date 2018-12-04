/// @function partner_detective_no_locations_discovered()

var dialogBodySequence = ["The coroner said the time of death is estimated to be around 22:15..."];
var dialogCharacterSequence = [obj_partner_detective];
var dialogChoiceOptionSequence = ["Got it!"];

instantiate_dialog_engine(	dialogBodySequence,
							dialogCharacterSequence,
							dialogChoiceOptionSequence,
							partner_detective_general_intervention_resolver);