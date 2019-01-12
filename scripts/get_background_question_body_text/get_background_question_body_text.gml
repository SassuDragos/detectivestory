/// @function get_background_question_body_text(noOfTimesQuestionWasAsked)

switch(argument0) {
	case 0: return "Ah... ah... I see you know how to make jokes.";
	case 1: return "Not as funny the second time.";
	case 2: return "You are really annoying sometimes, you know?";
	case 3: return "Some people are like clouds. When they disappear, it's a brighter day.";
	case 4:
	default:
		ds_map_set(global.cluesMap, "no_of_background_questions_on_partner", global.cluesMap[? "no_of_background_questions_on_partner"] - 1);
		return "Talk to the hand!";
}
	