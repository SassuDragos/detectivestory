var collision_obj = argument0;

var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_partner_detective);

var dialogBodySequence = [];
var dialogCharacterSequence = [];
var dialogChoiceOptionSequence = [];
var dialogBehaviourSequence = [];

var tutorial_end = false;

switch(collision_obj.object_index) {
	case obj_pizza:
		// React to pizza
		dialogBodySequence[0] =  "Uhhh I'm not really hungry, but thanks anyway... I guess..."
		dialogCharacterSequence[0] = obj_partner_detective;
		if(global.dialog_engine != noone) {
			dialogChoiceOptionSequence[0] = defaultDialogChoices;
		}
		
		ReAddObjectToInventory();
		return true;
	case obj_ring:
		// React to ring
		dialogBodySequence[0] = "You found this ring next to the body. Do you think it belongs to Marcelo?"
		dialogCharacterSequence[0] = obj_partner_detective;
		//dialogChoiceOptionSequence[0] = ds_list_create();
		//add_choice_to_list(dialogChoiceOptionSequence[0], "Not really...");
		
		dialogBodySequence[1] = "Humm, not really. It doesn't seem to be his style. It could belong to our murderer..."
		dialogCharacterSequence[1] = obj_player;
		if(global.dialog_engine != noone) {
			dialogChoiceOptionSequence[1] = defaultDialogChoices;
		}
		
		ReAddObjectToInventory();
	
		break;
	case obj_pipe:
		// React to pipe
		dialogBodySequence[0] = "Since the report states the cause of death to be 'Hit by a blunt object', this could be our murder weapon!"
		dialogCharacterSequence[0] = obj_partner_detective;
		if(global.dialog_engine != noone) {
			dialogChoiceOptionSequence[0] = defaultDialogChoices;
		}
		
		ReAddObjectToInventory();
	
		break;
	case obj_cigarettes:
		// React to cigarettes
		clear_mouse_animation();
		global.actions_allowed = false;
		generate_stars_effect(obj_partner_detective.x, obj_partner_detective.y);
		var content = partner_detective_tutorial_dialog_content_init3();
		dialogBodySequence = content[0];
		dialogCharacterSequence = content[1];
		dialogChoiceOptionSequence = content[2];
		dialogBehaviourSequence = content[3];
		RemoveObjectFromInventory(collision_obj, true);
		tutorial_end = true;
		break;
	default:
		return false;
}
if(global.dialog_engine == noone) {
	instantiate_dialog_engine(	dialogBodySequence,
									dialogCharacterSequence,
									dialogChoiceOptionSequence, noone, dialogBehaviourSequence);
} else {
	add_data_sequence_to_dialog(dialogBodySequence, dialogCharacterSequence, dialogChoiceOptionSequence, dialogBehaviourSequence);
	move_to_next_dialog_step();
}
if(tutorial_end) {
	create_event_initialise_dialog_holder(id, partner_detective_tutorial_dialog_content_init4, noone, partner_detective_tutorial_default_choices(), "tutorial");	
}

return true;