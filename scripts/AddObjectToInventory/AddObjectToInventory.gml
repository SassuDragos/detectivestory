object = argument[0];

var copy = instance_create_layer(object.x, object.y, object.layer, object.object_index);
instance_destroy(object);
if(argument_count == 1 || !argument[1] || ds_list_find_index(global.inventory_items, copy) == -1) {
	ds_list_add(global.inventory_items,copy);
}
layer_add_instance("layer_inventory", copy);
copy.persistent = true;
copy.depth--;
copy.collider = noone;
copy.inInventory = true;
obj_inventory.hasChanged = true;