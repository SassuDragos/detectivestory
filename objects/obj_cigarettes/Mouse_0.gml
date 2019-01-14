/// @description Insert description here
// You can write your code in this editor
if(obj_fade_tutorial.inactive) {
	// Inherit the parent event
	event_inherited();
}

if(!inInventory) {
	with (obj_mouse) {
		if(image_xscale == 1) {
			if(animation != 2) {
				return;	
			}
			animation = 0;	
		}
	}
	AddObjectToInventory(self);
	instance_destroy(global.dialog_engine);
	create_event_initialise_dialog_holder(obj_partner_detective.id, partner_detective_tutorial_dialog_content_init2, noone, partner_detective_tutorial_default_choices(), "tutorial");
	action_discuss(obj_partner_detective);
}

