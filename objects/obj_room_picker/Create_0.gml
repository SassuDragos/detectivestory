/// @description Insert description here
// You can write your code in this editor

choiceList = ds_list_create();
ds_list_copy(choiceList, global.available_locations_list);
ds_list_add(choiceList, RoomChoices.TOADS)



lowerPos = 0;
upperPos = 4;

addX = 20;
addY = 10;

box_width = sprite_get_width(spr_choice_list_background) - (2*addX);
