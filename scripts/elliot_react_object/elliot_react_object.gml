var collision_obj = argument0;

var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_elliot);

var dialogBodySequence = [];
var dialogCharacterSequence = [];
var dialogChoiceOptionSequence = [];
var dialogBehaviourSequence = [];

switch(collision_obj.object_index) {
	case obj_ring:
		// React to ring
		change_clue_status("asked_elliot_ring", true);
		dialogBodySequence[0] = "Is this ring yours, or do you know it’s owner?"
		dialogCharacterSequence[0] = obj_player.id
		//dialogChoiceOptionSequence[0,0] = "Check answer..."
		
		dialogBehaviourSequence[0] = elliot_sprite_talking_scared();
		
		dialogBodySequence[1] = "*surprised* Yeah, where did you find it? Shit I probably shouldn’t have said that"
		dialogCharacterSequence[1] = obj_elliot.id;
		dialogChoiceOptionSequence[1] = defaultDialogChoices;
		if(global.dialog_engine != noone) {
			if(ds_map_find_value(global.cluesMap, "asked_elliot_money") &&
			   ds_map_find_value(global.cluesMap, "asked_elliot_alibi")) {
				   add_choice_to_list(dialogChoiceOptionSequence[1], "I guess we're done here");
			   }
		}
		
		dialogBehaviourSequence[1] = elliot_sprite_still_scared;
		
		RemoveObjectFromInventory(collision_obj, true);
		generate_stars_effect(obj_elliot.x, obj_elliot.y);
	
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