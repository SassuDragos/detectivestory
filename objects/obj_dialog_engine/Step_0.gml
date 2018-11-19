//Initialize dialog text and avatar (ONLY FIRST TIME) -> Due to lack of constructor forobj_dialog_engine
if (currentDialogStep == 0 && string_length(textBox.textBody) == 0) {
	var text = bodyTextSequence[currentDialogStep];
	var character = charactersSequence[currentDialogStep];
	setup_dialog(text, 
	character, 
	"", textBoxObject, 
	avatarBoxObject);
}


/*
	argument[0]: String = Text for dialog sequence
	argument[1]: Object: Interactor = Character for dialog sequence (HAVE TITLE + AVATAR)
	argument[2]: String = Choice dialog sequence (seach choice is eparated by '@')
	argument[3]: TextBox 
	argument[4]: AvatarBox	
*/