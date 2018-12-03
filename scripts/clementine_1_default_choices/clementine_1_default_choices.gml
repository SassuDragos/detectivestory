/// @function clementine_1_default_choices() -> List: String (Choices)

//TODO: HOW TO CHECK INVETORY? Set this up
var hasBruiserRingInInventory = true;

var choiceList = ds_list_create();
if (hasBruiserRingInInventory) {
	ds_list_add(choiceList, "Ask about ring");
}

ds_list_add(choiceList, "Ask for background");
ds_list_add(choiceList, "Check for alibi");
ds_list_add(choiceList, "Ask about bruise");
ds_list_add(choiceList, "Finish conversation");
ds_list_add(choiceList, "");
ds_list_add(choiceList, "");

return choiceList