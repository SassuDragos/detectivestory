//Initialize dialog text and avatar (ONLY FIRST TIME) -> Due to lack of constructor forobj_dialog_engine
if (currentDialogStep == 0 && string_length(textBoxObject.text_body) == 0) {
	var text = bodyTextSequence[currentDialogStep];
    var characters = charactersSequence[currentDialogStep];
	var choices = choiceSequence[currentDialogStep];
    setup_dialog_displayed_data(text, characters, choices);
}

/*
	argument[0]: String = Text for dialog sequence
	argument[1]: Object: Interactor = Character for dialog sequence (HAVE TITLE + AVATAR)
	argument[2]: String = Choice dialog sequence (seach choice is eparated by '@')
*/