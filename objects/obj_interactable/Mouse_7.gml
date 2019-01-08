/// @description Insert description here
// You can write your code in this editor
if(layer == layer_get_id("layer_disabled_items")) {
	return;
}

if(!ds_list_empty(contextMenuList)) {
	instantiate_context_menu(self, mouse_x, mouse_y, contextMenuList);
}