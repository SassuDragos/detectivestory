/// @description Insert description here
// You can write your code in this editor
if(!global.tutorial_active || (instance_exists(obj_fade_tutorial) && obj_fade_tutorial.inactive)) {
	if(!ds_list_empty(contextMenuList)) {
		instantiate_context_menu(self, mouse_x, mouse_y, contextMenuList);
	}
}