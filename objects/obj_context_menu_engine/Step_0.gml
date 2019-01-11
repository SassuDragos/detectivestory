/// @description Insert description here
// You can write your code in this editor

// INITIALIZE UI (If items added, but UI not created)
if (menuX != noone && menuY != noone && array_length_1d(buttonList) == 0) {
	var inputTypeListLength = ds_list_size(inputTypeList);

	var spriteHeight = sprite_get_height(spr_context_menu_item);
	var spriteWidth = sprite_get_width(spr_context_menu_item);
	for (var typeIndex = 0; typeIndex < inputTypeListLength; typeIndex += 1) {
		var itemX = menuX + spriteWidth / 2;
		var itemY = menuY + typeIndex * spriteHeight + spriteHeight / 2;
		var listItem = instance_create_layer(itemX, itemY, "layer_dialog", obj_context_menu_item);
		var menuItemType = ds_list_find_value(inputTypeList, typeIndex);
		switch(menuItemType) {
			case ContextMenuItemType.GOTO:
				listItem.action = action_go_to;
				listItem.text = "Go To";
				break;
			case ContextMenuItemType.DISCUSS:
				listItem.action = action_discuss;
				listItem.text = "Discuss";
				break;
			case ContextMenuItemType.PICK_UP:
				listItem.action = action_pick_up;
				listItem.text = "Pick up";
				break;
			case ContextMenuItemType.INSPECT:
				listItem.action = action_inspect;
				listItem.text = "Inspect";
				break;
			case ContextMenuItemType.ENTER_ROOM: 
				listItem.action = action_enter_room;
				listItem.text = "Enter room";
				break;
			case ContextMenuItemType.GIVEPIZZA: 
				listItem.action = action_givepizza;		
				listItem.text = "Give Pizza";
				break;
		}
		listItem.type = menuItemType;
		buttonList[typeIndex] = listItem;
		
	}
	
	menuMaxX = menuX + spriteWidth;
	menuMaxY = menuY + inputTypeListLength * spriteHeight;
}

var pointNotInRectangle = !point_in_rectangle(mouse_x, mouse_y, menuX, menuY, menuMaxX, menuMaxY);
var mouseActionTriggered = (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_middle) || mouse_check_button_pressed(mb_right))

if (mouseActionTriggered && pointNotInRectangle) {
	instance_destroy();
}

