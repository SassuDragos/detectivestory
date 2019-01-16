if (!((instance_exists(obj_dialog) && obj_dialog.firstCut) || global.tutorial_active)) {
	instance_destroy();
}