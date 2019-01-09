var collision_obj = argument0;

var defaultDialogChoices = obj_partner_detective.dialog_choices;

var dialogBodySequence = [];
var dialogCharacterSequence = [];
var dialogChoiceOptionSequence = [];
var dialogBehaviourSequence = [];

switch(collision_obj.object_index) {
	case obj_pizza:
		// React to pizza
		dialogBodySequence[0] = "Uhhh I'm not really hungry, but thanks anyway... I guess...";
		dialogCharacterSequence[0] = obj_partner_detective;
		if(global.dialog_engine == noone) {
			dialogChoiceOptionSequence[1,0] = "Ok";
		} else {
			for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
				dialogChoiceOptionSequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
			}
		}
		
		ReAddObjectToInventory();
		
		break;
	case obj_ring:
		// React to ring
		dialogBodySequence[0] = "You found this ring next to the body. Do you think it belongs to Marcelo?"
		dialogCharacterSequence[0] = obj_partner_detective;
		dialogChoiceOptionSequence[0,0] = "Not really..."
		
		dialogBodySequence[1] = "Humm, not really. It doesn't seem to be his style. It could belong to our murderer..."
		dialogCharacterSequence[1] = obj_player;
		if(global.dialog_engine == noone) {
			dialogChoiceOptionSequence[1,0] = "Ok";
		} else {
			for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
				dialogChoiceOptionSequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
			}
		}
		
		ReAddObjectToInventory();
	
		break;
	case obj_pipe:
		// React to pipe
		dialogBodySequence[0] = "Since the report states the cause of death to be 'Hit by a blunt object', this could be our murder weapon!"
		dialogCharacterSequence[0] = obj_partner_detective;
		if(global.dialog_engine == noone) {
			dialogChoiceOptionSequence[1,0] = "I agree!";
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