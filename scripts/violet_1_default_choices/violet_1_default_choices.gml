/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();


add_choice_to_list(choiceList, "Clementine’s Whereabouts");

if (ds_map_find_value(global.cluesMap, "upstairs_inquiry_unlocked")) {
	add_choice_to_list(choiceList, "More details about upstairs");
}

var canAskToUnlockUpstairs = ds_map_find_value(global.cluesMap, "upstairs_ask_for_permission_unlocked");
		
if (canAskToUnlockUpstairs && is_location_available(room, Where.INSIDE_UPSTAIRS, RoomChoices.APARTMENTS)) {
	add_choice_to_list(choiceList, "Ask to go and check upstairs");
}


add_choice_to_list(choiceList, "Ask about background");
add_choice_to_list(choiceList, "Ask role in the pizzeria");
add_choice_to_list(choiceList, "Check for alibi");
//add_choice_to_list(choiceList, "Ask about ring");
add_choice_to_list(choiceList, "Finish conversation");



return choiceList