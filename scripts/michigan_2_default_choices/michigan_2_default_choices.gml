/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();

add_choice_to_list(choiceList, "Ask for background");

//TODO: Check if ring is in invetory
/*if(ds_map_find_value(global.cluesMap, "has_bruiser_ring_in_inventory")) {
	add_choice_to_list(choiceList, "Ask about ring");
}*/

add_choice_to_list(choiceList, "Pressure about what he ingested")

/*if(ds_map_find_value(global.cluesMap, "knows_toad_took_shrooms")) {
	add_choice_to_list(choiceList, "Ask about dealer")
}*/

add_choice_to_list(choiceList, "Finish conversation")



return choiceList