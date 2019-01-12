var list = argument[0];
var text = argument[1];

for(var i=0;i < ds_list_size(list); ++i) {
	var element = ds_list_find_value(list, i);
	if(element[0] == text) {
		ds_list_delete(list, i);
		return;	
	}
}