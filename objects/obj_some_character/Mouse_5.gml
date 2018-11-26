if(position_meeting(mouse_x, mouse_y, self) && global.actions_allowed) {
	if(global.context_menu_engine == noone){
		global.context_menu_engine = instance_create_depth(0, 0, 0, obj_context_menu_engine);
		global.context_menu_engine.menuX = mouse_x;
		global.context_menu_engine.menuY = mouse_y;
		global.context_menu_engine.inputTypeList[0] = ContextMenuItemType.GOTO; 
		global.context_menu_engine.inputTypeList[1] = ContextMenuItemType.DISCUSS; 
		global.context_menu_engine.inputTypeList[2] = ContextMenuItemType.PICK_UP; 	
	}
}