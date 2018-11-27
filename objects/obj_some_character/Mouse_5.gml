var menuList = ds_list_create()
if (position_meeting(obj_player.x, obj_player.y, self)) {
    ds_list_add(menuList, ContextMenuItemType.DISCUSS);
    ds_list_add(menuList, ContextMenuItemType.PICK_UP);
} else {
    ds_list_add(menuList, ContextMenuItemType.GOTO);
}

instantiate_context_menu(self, mouse_x, mouse_y, menuList);
