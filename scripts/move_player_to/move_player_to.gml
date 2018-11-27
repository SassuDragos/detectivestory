/// @function move_player_to(destination_x, destination_y)

if(global.actions_allowed) {
    if(argument0 >= obj_player.x) {
        obj_player.image_xscale = -1;
        side = "right";
    } else {
        obj_player.image_xscale = 1;
        side = "left";
    }

    if(argument1 <= obj_player.y) {
        obj_player.sprite_index = spr_detective_walk_nw;    
    } else {
        obj_player.sprite_index = spr_detective_walk_sw;
    }

    obj_player.image_index = 0;

    obj_player.direction = point_direction(obj_player.x, obj_player.y, argument0, argument1);

    destination_x = argument0;
    destination_y = argument1;

    obj_player.speed = 3;
    
}
