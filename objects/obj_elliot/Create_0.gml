dialog_choices = elliot_ir_default_choices();

create_event_initialise_character(id, "Elliot Mushu", c_green);
create_event_initialise_dialog_holder(id, elliot_ir_dialog_content_init, elliot_ir_dialog_resolver);