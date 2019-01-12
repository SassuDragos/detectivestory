/// @function clementine_1_default_choices() -> List: String (Choices)

//TODO: HOW TO CHECK INVETORY? Set this up
var hasBruiserRingInInventory = true;

var choiceList = ds_list_create();
/*if (hasBruiserRingInInventory) {
	add_choice_to_list(choiceList, "Ask about ring");
}*/
add_choice_to_list(choiceList, "Ask about drug dealing");
add_choice_to_list(choiceList, "Ask for background");
add_choice_to_list(choiceList, "Check for alibi");
add_choice_to_list(choiceList, "Finish conversation");

return choiceList