/// @description Insert description here
// You can write your code in this editor

// if engine has been initialised and items haven't been created yet instanciate them.
if (menuX != noone && menuY != noone && array_length_1d(inputTypeList) == 0) {
	var inputTypeListLength = array_length_1d(inputTypeList);
	for (var typeIndex = 0; typeIndex < inputTypeListLength; i += 1) {
		switch(inputTypeList[typeIndex]) {
			case ContextMenuItemType.GOTO:
				var itemX = x;
				var itemY = y + typeIndex * spr_context_menu_item.sprite_height;
				var listItem = instance_create_layer(itemX, itemY, "layer_dialog", obj_context_menu_item);
				listItem.action = action_go_to();
				listItem.text = "Discuss";
				listItem.type = ContextMenuItemType.GOTO;
				ds_list_add(listItem);
				break;
			case ContextMenuItemType.DISCUSS:
				
				break;
			case ContextMenuItemType.PICK_UP:
				break;
		}
	}
}