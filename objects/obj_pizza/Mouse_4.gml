/// @description Insert description here
// You can write your code in this editor

switch(room) {
	case room_house_toad:
		var menuList = ds_list_create()

		ds_list_add(menuList, ContextMenuItemType.PICK_UP);

		instantiate_context_menu(self, mouse_x, mouse_y, menuList);
		break;
}
