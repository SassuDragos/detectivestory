var collision_obj = argument0;

var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_clementine);

var dialogBodySequence = [];
var dialogCharacterSequence = [];
var dialogChoiceOptionSequence = [];
var dialogBehaviourSequence = [];

switch(collision_obj.object_index) {
	case obj_ring:
		// React to ring
		dialogBodySequence[0] = "Is this ring yours, or do you know it’s owner?"
		dialogCharacterSequence[0] = obj_player
		//dialogChoiceOptionSequence[0,0] = "Check answer..."
		
		dialogBodySequence[1] = "No, I have never seen it before."
		dialogCharacterSequence[1] = obj_clementine
		if(global.dialog_engine != noone) {
			dialogChoiceOptionSequence[1] = defaultDialogChoices;
		}
		
		ReAddObjectToInventory();
	
		break;
	default:
		return false;
}
if(global.dialog_engine == noone) {
	instantiate_dialog_engine(	dialogBodySequence,
									dialogCharacterSequence,
									dialogChoiceOptionSequence,
									noone,
									dialogBehaviourSequence);
} else {
	add_data_sequence_to_dialog(dialogBodySequence, dialogCharacterSequence, dialogChoiceOptionSequence, dialogBehaviourSequence);
	move_to_next_dialog_step();
}
return true;