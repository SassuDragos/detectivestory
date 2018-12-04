/// @function partner_detective_no_locations_discovered()

var dialogBodySequence = ["I think you missed some important evidence..."];
var dialogCharacterSequence = [obj_partner_detective];
var dialogChoiceOptionSequence = ["Got it!"];

instantiate_dialog_engine(	dialogBodySequence,
							dialogCharacterSequence,
							dialogChoiceOptionSequence,
							partner_detective_general_intervention_resolver);        