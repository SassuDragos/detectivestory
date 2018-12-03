var menuList = ds_list_create()

ds_list_add(menuList, ContextMenuItemType.DISCUSS);

instantiate_context_menu(self, mouse_x, mouse_y, menuList);
