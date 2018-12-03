var menuHolder = global.context_menu_engine.attachedObject;

var distancePlayerToMenuHolder = point_distance(menuHolder.x, menuHolder.y, obj_player.x, obj_player.y)

instance_destroy(obj_context_menu_engine);

script_execute(action, menuHolder);
//TODO: First move and then execute. Moving issues atm. 
/*
if(distancePlayerToMenuHolder < 80){
	script_execute(action, menuHolder);
} else {
    move_player_to(menuHolder.x, menuHolder.y)
    global.movement_manager.onCompleteAction = action;
    global.movement_manager.destinationObject = menuHolder;
    global.movement_manager.alarm[11] = room_speed / 2
}
*/

