//Initialize dialog text and avatar (ONLY FIRST TIME) -> Due to lack of constructor forobj_dialog_engine
if (currentDialogStep == 0 && string_length(textBoxObject.text_body) == 0) {
	var text = body_text_sequence[currentDialogStep];
	var characters = characters_sequence[currentDialogStep];
	var choices = get_row_from_2darray(choice_sequence, currentDialogStep);
	setup_dialog_data(text, characters, choices, textBoxObject, avatarBoxObject, choiceBoxObject);
}


/*
	argument[0]: String = Text for dialog sequence
	argument[1]: Object: Interactor = Character for dialog sequence (HAVE TITLE + AVATAR)
	argument[2]: String = Choice dialog sequence (seach choice is eparated by '@')
	argument[3]: TextBox 
	argument[4]: AvatarBox	
	argumnet[5]: ChoiceBox
*/