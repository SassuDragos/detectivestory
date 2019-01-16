/// @description Insert description here
// You can write your code in this editor
if(hasChanged) {
	for(i=0; i < ds_list_size(global.inventory_items); ++i) {
		global.inventory_items[| i].y = y + 65 + (i * 115);
		global.inventory_items[| i].x = x + sprite_width / 2;
	}
	image_index = ds_list_size(global.inventory_items);
	hasChanged = false;
}