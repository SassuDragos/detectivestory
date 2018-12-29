var menuList = ds_list_create()
var hasPickedPizza = ds_map_find_value(global.cluesMap, "picked_pizza")
var gaveToadPizza = ds_map_find_value(global.cluesMap, "gave_toad_pizza")

ds_list_add(menuList, ContextMenuItemType.DISCUSS)
if(hasPickedPizza == true && gaveToadPizza == false){	
	ds_list_add(menuList, ContextMenuItemType.GIVEPIZZA);
}

instantiate_context_menu(self, mouse_x, mouse_y, menuList);
