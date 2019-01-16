/// @description Insert description here
// You can write your code in this editor
	for(i=0; i < ds_list_size(global.inventory_items); ++i) {
		var inst = global.inventory_items[| i]
		ds_list_replace(global.inventory_items, i, inst.object_index);
		instance_destroy(inst);
	}