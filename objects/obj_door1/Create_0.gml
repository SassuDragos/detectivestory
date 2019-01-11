/// @description Insert description here
// You can write your code in this editor
if(where == Where.OUTSIDE) {
	// Inherit the parent event
	event_inherited();
} else {
	add_available_location(room, where, one_way);
	ds_list_add(contextMenuList, ContextMenuItemType.ENTER_ROOM);
}

