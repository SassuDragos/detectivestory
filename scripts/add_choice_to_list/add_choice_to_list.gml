var list = argument[0];
var text = argument[1];
var level = 0;
var under = noone;
if(argument_count > 2) {
	level = argument[2];
}
if(argument_count > 3) {
	under = argument[3];
}

var pos = -1;
for(var i=0;i < ds_list_size(list); ++i) {
	var element = ds_list_find_value(list, i);
	if(under != noone && element[0] == under) {
		pos = i+1;
	}
	if(element[0] == text) {
		return;	
	}
}

if(pos != -1) {
	ds_list_insert(list, pos, [text, false, level]);
} else {
	ds_list_add(list, [text, false, level]);
}