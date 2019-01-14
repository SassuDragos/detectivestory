/// @description Insert description here
// You can write your code in this editor
if(global.tutorial_active && image_xscale == 1 && animation > 0 && global.actions_allowed) {
	--moveClickRemaining;
	if(moveClickRemaining == 0) {
		animation = 0;
		global.actions_allowed = false;
		create_event_initialise_dialog_holder(id, partner_detective_tutorial_dialog_content_init1, noone, partner_detective_tutorial_default_choices(), "tutorial");
		action_discuss(self);
	}
}