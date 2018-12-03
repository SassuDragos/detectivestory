/// @description Insert description here
// You can write your code in this editor

// INITIALIZE UI (If items added, but UI not created)
if (menuX != noone && menuY != noone && array_length_1d(buttonList) == 0) {
	var inputTypeListLength = ds_list_size(inputTypeList);

	var spriteHeight = sprite_get_height(spr_context_menu_item);
	var spriteWidth = sprite_get_width(spr_context_menu_item);
	for (var typeIndex = 0; typeIndex < inputTypeListLength; typeIndex += 1) {
		var itemX = menuX;
		var itemY = menuY + typeIndex * spriteHeight;
		
		switch(ds_list_find_value(inputTypeList, typeIndex)) {
			case ContextMenuItemType.GOTO:
				var listItem = instance_create_layer(itemX, itemY, "layer_dialog", obj_context_menu_item);
				listItem.action = action_player_go_to;

				listItem.text = "Go To";
				listItem.type = ContextMenuItemType.GOTO;
				buttonList[typeIndex] = listItem;
				break;
			case ContextMenuItemType.DISCUSS:
				var listItem = instance_create_layer(itemX, itemY, "layer_dialog", obj_context_menu_item);
				listItem.action = action_discuss;

				listItem.text = "Discuss";
				listItem.type = ContextMenuItemType.DISCUSS;
				buttonList[typeIndex] = listItem;
				break;
			case ContextMenuItemType.PICK_UP:
				var listItem = instance_create_layer(itemX, itemY, "layer_dialog", obj_context_menu_item);
				listItem.action = action_pick_up;

				listItem.text = "Pick up";
				listItem.type = ContextMenuItemType.PICK_UP;
				buttonList[typeIndex] = listItem;
				break;
		}
	}
	
	menuMaxX = menuX + spriteWidth;
	menuMaxY = menuY + inputTypeListLength * spriteHeight;
}

var pointNotInRectangle = !point_in_rectangle(mouse_x, mouse_y, menuX, menuY, menuMaxX, menuMaxY);
var mouseActionTriggered = (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_middle) || mouse_check_button_pressed(mb_right))

if (mouseActionTriggered && pointNotInRectangle) {
	instance_destroy();
}
