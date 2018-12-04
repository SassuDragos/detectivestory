if (!variable_global_exists("dialog_engine") || !variable_global_exists("interrogation_enabled")) {
	initialize_global_variables()	
}

if (global.dialog_engine == noone && global.interrogation_enabled == true) {
	instance_create_layer(room_width/2 , room_height/2 + 180 , "interrogation_button_layer", obj_interrogate)
}

