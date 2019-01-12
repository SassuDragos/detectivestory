/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();

if (ds_map_find_value(global.cluesMap, "has_discovered_leonardo")) {
	add_choice_to_list(choiceList, "Opinion on Leonardo");
}
add_choice_to_list(choiceList, "Opinion on Clementine");
add_choice_to_list(choiceList, "Opinion on Violet");
add_choice_to_list(choiceList, "Opinion on Marcelo");
add_choice_to_list(choiceList, "Opinion on Michigan");
add_choice_to_list(choiceList, "Finish conversation");



return choiceList