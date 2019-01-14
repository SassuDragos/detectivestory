/// @description Insert description here
// You can write your code in this editor
if(where == Where.OUTSIDE) {
	// Inherit the parent event
	event_inherited();
} else {
	add_available_location(room, where, one_way);
	ds_list_add(contextMenuList, ContextMenuItemType.ENTER_ROOM);
}
/*
global.dead = false;
if(where == Where.OUTSIDE ) {
	// Inherit the parent event
	event_inherited();
} else if(global.dead == true){
	add_available_location(room, where, one_way);
	ds_list_add(contextMenuList, ContextMenuItemType.ENTER_ROOM);
}

*/

/*
Left Pressed

if(layer == layer_get_id("layer_disabled_items")) {
	return;
}

if(!ds_list_empty(contextMenuList) && global.dead == false) {
	instantiate_context_menu(self, mouse_x, mouse_y, contextMenuList);
}else if(global.dead == true){
	character_says(obj_partner_detective, "The door is locked, we should find a way to break in.");
}

