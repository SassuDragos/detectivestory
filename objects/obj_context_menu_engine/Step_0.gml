/// @description Insert description here
// You can write your code in this editor

// if engine has been initialised and items haven't been created yet instanciate them.
if (menuX != noone && menuY != noone && array_length_1d(buttonList) == 0) {
	var inputTypeListLength = array_length_1d(inputTypeList);
	var spriteHeight = sprite_get_height(spr_context_menu_item);
	for (var typeIndex = 0; typeIndex < inputTypeListLength; typeIndex += 1) {
		var itemX = menuX;
		var itemY = menuY + typeIndex * spriteHeight;
		
		switch(inputTypeList[typeIndex]) {
			case ContextMenuItemType.GOTO:
				var listItem = instance_create_layer(itemX, itemY, "layer_dialog", obj_context_menu_item);
				listItem.action = action_go_to();
				listItem.text = "Go To";
				listItem.type = ContextMenuItemType.GOTO;
				buttonList[typeIndex] = listItem;
				break;
			case ContextMenuItemType.DISCUSS:
				var listItem = instance_create_layer(itemX, itemY, "layer_dialog", obj_context_menu_item);
				listItem.action = action_discuss();
				listItem.text = "Discuss";
				listItem.type = ContextMenuItemType.DISCUSS;
				buttonList[typeIndex] = listItem;
				break;
			case ContextMenuItemType.PICK_UP:
				var listItem = instance_create_layer(itemX, itemY, "layer_dialog", obj_context_menu_item);
				listItem.action = action_pick_up();
				listItem.text = "Pick up";
				listItem.type = ContextMenuItemType.PICK_UP;
				buttonList[typeIndex] = listItem;
				break;
		}
	}
}