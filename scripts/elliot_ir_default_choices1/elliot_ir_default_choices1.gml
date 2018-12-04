var hasBruiserRingInInventory = true;

var choiceList = ds_list_create();

ds_list_add(choiceList, "Ask for background");
ds_list_add(choiceList, "Confront about drug business");
if (hasBruiserRingInInventory) {
	ds_list_add(choiceList, "Ask about ring");
}
ds_list_add(choiceList, "");
ds_list_add(choiceList, "");

return choiceList