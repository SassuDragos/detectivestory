create_event_initialise_character(id, "Michigan Mignon", c_green, spr_michigan_avatar);
var hasGaveToadPizza = ds_map_find_value(global.cluesMap, "gave_toad_pizza");
if (hasGaveToadPizza) {
	create_event_initialise_dialog_holder(id, michigan_2_dialog_content_init, michigan_2_dialog_resolver);
} else {
	create_event_initialise_dialog_holder(id, michigan_1_dialog_content_init, michigan_1_dialog_resolver);
}
ds_list_add(contextMenuList, ContextMenuItemType.DISCUSS);