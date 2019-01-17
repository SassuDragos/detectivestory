/// @description Insert description here
// You can write your code in this editor
if(global.game_stage < 3 || global.cluesMap[? "violet_door_open"]) {
	var bedroomLuigi = instance_create_layer(x, y, "Instances", obj_door1);
	bedroomLuigi.where = Where.INNER;
	bedroomLuigi.one_way = RoomChoices.BEDROOM_LUIGI;
	bedroomLuigi.unlocked = true;
	add_available_location(room, bedroomLuigi.where, bedroomLuigi.one_way);
	bedroomLuigi.contextMenuList = ds_list_create();
	ds_list_add(bedroomLuigi.contextMenuList, ContextMenuItemType.ENTER_ROOM);
	bedroomLuigi.depth = depth - 1;
}