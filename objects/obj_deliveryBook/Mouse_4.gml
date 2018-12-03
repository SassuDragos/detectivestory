variable_global_set("deliveryLedger",0);

var menuList = ds_list_create();

ds_list_add(menuList, ContextMenuItemType.INSPECT);

instantiate_context_menu(self, mouse_x, mouse_y, menuList);

