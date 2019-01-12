var list = argument[0];
var text = argument[1];
var force = noone;
if(argument_count > 2) {
	force = argument[2];
}

for(var i = 0; i < ds_list_size(list); ++i) {
	var element = ds_list_find_value(list, i);
	if(element[0] == text) {
		element[1] = force ? force : !element[1];
		ds_list_set(list, i, element);
		break;
	}
}