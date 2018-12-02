// Alarm for discussion event:
var distancePlayerToDialogHolder = point_distance(destinationObject.x, destinationObject.y, obj_player.x, obj_player.y)

if(distancePlayerToDialogHolder < 150){
    script_execute(onCompleteAction, destinationObject);
} else {
    global.movement_manager.alarm[11] = room_speed / 2
}
