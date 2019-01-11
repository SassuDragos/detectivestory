/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();


ds_list_add(choiceList, "Clementine’s Whereabouts");

if (ds_map_find_value(global.cluesMap, "upstairs_inquiry_unlocked")) {
	ds_list_add(choiceList, "More details about upstairs");
}

var canAskToUnlockUpstairs = ds_map_find_value(global.cluesMap, "upstairs_ask_for_permission_unlocked");
		
if (canAskToUnlockUpstairs && is_location_available(room, Where.INSIDE_UPSTAIRS, RoomChoices.APARTMENTS)) {
	ds_list_add(choiceList, "Ask to go and check upstairs");
}


ds_list_add(choiceList, "Ask about background");
ds_list_add(choiceList, "Ask role in the pizzeria");
ds_list_add(choiceList, "Check for alibi");
//ds_list_add(choiceList, "Ask about ring");
ds_list_add(choiceList, "Finish conversation");



return choiceList