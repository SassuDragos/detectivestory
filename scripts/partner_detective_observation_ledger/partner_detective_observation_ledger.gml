var dialog_body = [];
var dialog_character = [];
var dialog_choices = [];
var dialogComponents = [];

dialog_body[0] = "I suggest checking that address out. We should always question the statements of our suspects!";
dialog_character[0] = obj_partner_detective;
dialog_choices[0,0] = "Got it!"

dialogComponents[0] = dialog_body;
dialogComponents[1] = dialog_character;
dialogComponents[2] = dialog_choices;
return dialogComponents