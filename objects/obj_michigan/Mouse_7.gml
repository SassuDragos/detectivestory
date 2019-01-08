/// @description Insert description here
// You can write your code in this editor

var collision_obj = instance_place(x, y, obj_draggable);

if(!collision_obj) {
	event_inherited();
	return;
}

switch(collision_obj.object_index) {
	case obj_pizza:
		// React to pizza
		var dialogBodySequence = ["Oh thanks, I am quite hungry. And these pizzas are delicious!"];
		var dialogCharacterSequence = [obj_michigan];
		var dialogChoiceOptionSequence = ["Ok"];

		instantiate_dialog_engine(	dialogBodySequence,
								dialogCharacterSequence,
								dialogChoiceOptionSequence);
		RemoveObjectFromInventory(collision_obj, true);
		
		// Update game state
		ds_map_set(global.cluesMap, "gave_toad_pizza", true)
		create_event_initialise_dialog_holder(obj_michigan, michigan_2_dialog_content_init, michigan_2_dialog_resolver);
		
		break;
	default:
		event_inherited();
}