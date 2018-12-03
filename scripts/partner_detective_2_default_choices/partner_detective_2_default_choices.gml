/// @function partner_detective_1_default_choices() -> List: String (Choices)

var choiceList = ds_list_create();

ds_list_add(choiceList, "Ask for background");
ds_list_add(choiceList, "Opinion on the case");
ds_list_add(choiceList, "Inquire about the smoking");
ds_list_add(choiceList, "Finish conversation");
ds_list_add(choiceList, "");
ds_list_add(choiceList, "");

return choiceList