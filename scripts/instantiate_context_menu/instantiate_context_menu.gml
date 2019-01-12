/// @function instantiate_context_menu(object, mouse_x, mouse_y, contextMenuList)

if(position_meeting(argument1, argument2, argument0) && global.actions_allowed) {
	if(global.context_menu_engine != noone){
		instance_destroy(global.context_menu_engine);
	}
	global.context_menu_engine = instance_create_depth(0, 0, 0, obj_context_menu_engine);
	global.context_menu_engine.attachedObject = argument0;
	global.context_menu_engine.menuX = argument1;
	global.context_menu_engine.menuY = argument2;
	global.context_menu_engine.inputTypeList = argument3;
}