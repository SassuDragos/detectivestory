/// @description Insert description here
// You can write your code in this editor
global.path_grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

with(obj_obstacle) {
	mp_grid_add_instances(global.path_grid, id, false);
}