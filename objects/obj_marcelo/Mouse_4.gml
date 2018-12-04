/// @description Insert description here
// You can write your code in this editor

var menuList = ds_list_create()

ds_list_add(menuList, ContextMenuItemType.INSPECT);

instantiate_context_menu(self, mouse_x, mouse_y, menuList);
