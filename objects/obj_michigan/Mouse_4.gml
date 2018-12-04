var menuList = ds_list_create()

if !variable_global_exists("picked_pizza"){
initialize_global_variables()	
}
if(global.picked_pizza == true && ds_map_find_value(global.cluesMap, "gave_toad_pizza") == false){
	
ds_list_add(menuList, ContextMenuItemType.GIVEPIZZA);
}
ds_list_add(menuList, ContextMenuItemType.DISCUSS);

instantiate_context_menu(self, mouse_x, mouse_y, menuList);
