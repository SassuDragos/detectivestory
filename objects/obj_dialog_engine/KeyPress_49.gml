//Go to next dialog option

if (currentDialogStep + 1 < array_length_1d(bodyTextSequence)){
	currentDialogStep += 1
	setup_dialog_data(body_text_sequence[currentDialogStep], characters_sequence[currentDialogStep], "", textBoxObject, avatarBoxObject);
} else {
	instance_destroy();
}

/*
	argument[0]: String = Text for dialog sequence
	argument[1]: Object: Interactor = Character for dialog sequence (HAVE TITLE + AVATAR)
	argument[2]: String = Choice dialog sequence (seach choice is eparated by '@')
	argument[3]: TextBox 
	argument[4]: AvatarBox	
*/