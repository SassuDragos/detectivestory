create_event_initialise_character(id, "Michigan Mignon", c_green, spr_michigan_avatar);
var hasGivenToadPizza = ds_map_find_value(global.cluesMap, "gave_toad_pizza");
if (hasGivenToadPizza) {
	create_event_initialise_dialog_holder(id, michigan_2_dialog_content_init, michigan_2_dialog_resolver, michigan_2_default_choices(), "2");
} else {
	create_event_initialise_dialog_holder(id, michigan_1_dialog_content_init, michigan_1_dialog_resolver, michigan_1_default_choices(), "1");
}
ds_list_add(contextMenuList, ContextMenuItemType.DISCUSS);