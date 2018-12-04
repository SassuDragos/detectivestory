/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();


ds_list_add(choiceList, "Clementine’s Whereabouts");

if (ds_map_find_value(global.cluesMap, "upstairs_inquiry_unlocked")) {
	ds_list_add(choiceList, "More details about upstairs");
}

var canAskToUnlockUpstairs = ds_map_find_value(global.cluesMap, "upstairs_ask_for_permission_unlocked");
var upstairsHasNotBeenUnlockedBefore = ds_list_find_index(global.available_locations_list, RoomChoices.APARTMENTS) == -1;

if (canAskToUnlockUpstairs && upstairsHasNotBeenUnlockedBefore) {
	ds_list_add(choiceList, "Ask to go and check upstairs");
}


ds_list_add(choiceList, "Ask about background");
ds_list_add(choiceList, "Ask role in the pizzeria");
ds_list_add(choiceList, "Check for alibi");
ds_list_add(choiceList, "Ask about ring");
ds_list_add(choiceList, "Finish conversation");
ds_list_add(choiceList, "");
ds_list_add(choiceList, "");

return choiceList