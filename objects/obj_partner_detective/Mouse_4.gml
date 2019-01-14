/// @description Insert description here
// You can write your code in this editor
if(!global.tutorial_active || (instance_exists(obj_fade_tutorial) && obj_fade_tutorial.inactive)) {
	if(global.tutorial_active) {
		with(obj_mouse) {
			if(!(image_xscale == 1 && animation == 2 && !instance_exists(obj_cigarettes))) {
				return;
			}
		}
	}
	if(!ds_list_empty(contextMenuList)) {
		instantiate_context_menu(self, mouse_x, mouse_y, contextMenuList);
	}
}