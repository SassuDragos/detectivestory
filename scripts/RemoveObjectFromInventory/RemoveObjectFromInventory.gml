ds_list_delete(global.inventory_items, ds_list_find_index(global.inventory_items, argument0));
if(argument1) {
	instance_destroy(argument0);
}
obj_inventory.hasChanged = true;