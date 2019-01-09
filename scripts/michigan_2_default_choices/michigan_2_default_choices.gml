/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();

ds_list_add(choiceList, "Ask for background");

//TODO: Check if ring is in invetory
/*if(ds_map_find_value(global.cluesMap, "has_bruiser_ring_in_inventory")) {
	ds_list_add(choiceList, "Ask about ring");
}*/

ds_list_add(choiceList, "Pressure about what he ingested")

/*if(ds_map_find_value(global.cluesMap, "knows_toad_took_shrooms")) {
	ds_list_add(choiceList, "Ask about dealer")
}*/

ds_list_add(choiceList, "Finish conversation")
ds_list_add(choiceList, "");
ds_list_add(choiceList, "");

return choiceList