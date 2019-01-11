var collision_obj = argument0;

var defaultDialogChoices = obj_violet.dialog_choices;

var dialogBodySequence = [];
var dialogCharacterSequence = [];
var dialogChoiceOptionSequence = [];
var dialogBehaviourSequence = [];

switch(collision_obj.object_index) {
	case obj_ring:
		// React to ring
		dialogBodySequence[0] = "Is this ring yours, or do you know it’s owner?"
		dialogCharacterSequence[0] = obj_player;
		//dialogChoiceOptionSequence[0,0] = "Check answer..."
		
		dialogBodySequence[1] = "Let me see it  *investigates ring*, no, I don’t know who this belongs to.";
		dialogCharacterSequence[1] = obj_violet;
		if(global.dialog_engine == noone) {
			//dialogChoiceOptionSequence[1,0] = "Ok";
		} else {
			for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
				dialogChoiceOptionSequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
			}
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