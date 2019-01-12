/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();

add_choice_to_list(choiceList, "Clementine’s Whereabouts");
add_choice_to_list(choiceList, "Ask about background");
add_choice_to_list(choiceList, "Ask role in the pizzeria");
add_choice_to_list(choiceList, "Check for alibi");
//add_choice_to_list(choiceList, "Ask about ring");
add_choice_to_list(choiceList, "Finish conversation");



return choiceList