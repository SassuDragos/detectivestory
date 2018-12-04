/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();

if (ds_map_find_value(global.cluesMap, "has_discovered_leonardo")) {
	ds_list_add(choiceList, "Opinion on Leonardo");
}
ds_list_add(choiceList, "Opinion on Clementine");
ds_list_add(choiceList, "Opinion on Violet");
ds_list_add(choiceList, "Opinion on Marcelo");
ds_list_add(choiceList, "Opinion on Michigan");
ds_list_add(choiceList, "Finish conversation");
ds_list_add(choiceList, "");
ds_list_add(choiceList, "");

return choiceList