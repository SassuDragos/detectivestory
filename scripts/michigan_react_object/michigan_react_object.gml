var collision_obj = argument0;

var defaultDialogChoices = obj_michigan.dialog_choices;

var dialogBodySequence = [];
var dialogCharacterSequence = [];
var dialogChoiceOptionSequence = [];
var dialogBehaviourSequence = [];

switch(collision_obj.object_index) {
	case obj_pizza:
		// React to pizza
		character_says(obj_michigan, "Oh thanks, I am quite hungry. And these pizzas are delicious!");
		
		RemoveObjectFromInventory(collision_obj, true);
		
		generate_stars_effect(obj_michigan.x, obj_michigan.y);
		
		// Update game state
		ds_map_set(global.cluesMap, "gave_toad_pizza", true)
		create_event_initialise_dialog_holder(obj_michigan, michigan_2_dialog_content_init, michigan_2_dialog_resolver);
		//dialogChoiceOptionSequence[0,0] = "Ok";
		
		return;
	case obj_ring:
		// React to ring
		dialogBodySequence[0] = "Is this ring yours, or do you know it’s owner?"
		dialogCharacterSequence[0] = obj_player;
		//dialogChoiceOptionSequence[0,0] = "Check answer..."
		
		dialogBodySequence[1] = "Nah man, I never wear rings."
		dialogCharacterSequence[1] = obj_michigan;
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