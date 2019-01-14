var choiceList = ds_list_create();

add_choice_to_list(choiceList, "Ask for background");
add_choice_to_list(choiceList, "Confront about drug business");
/*if (hasBruiserRingInInventory) {
	add_choice_to_list(choiceList, "Ask about ring");
}*/
add_choice_to_list(choiceList, "ACCUSE");

//add_choice_to_list(choiceList, "I guess we're done here");

return choiceList
