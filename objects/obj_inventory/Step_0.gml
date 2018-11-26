/// @description Insert description here
// You can write your code in this editor

if(hasChanged) {
	for(i=0; i < ds_list_size(items); ++i) {
		items[| i].x = x + 65 + (i * 115);
		items[| i].y = y + sprite_height / 2;
	}
	image_index = ds_list_size(items);
	hasChanged = false;
}