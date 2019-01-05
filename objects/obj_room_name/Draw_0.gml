/// @description Insert description here
// You can write your code in this editor
draw_self();

var room_display = "Unknown room";

switch(room) {
	case room_pizzaria:
	case room_body_inspection:
		room_display = "Pizzaria (Ground floor)";
		break;
	case room_storage:
		room_display = "Storage (1st floor)";
		break;
	case room_living:
		room_display = "Living Room (2nd floor)";
		break;
	case room_house_toad:
		room_display = "Michigan's Apartment";
		break;
	case room_bedroom_mario:
		room_display = "Marcelo's room";
		break;
	case room_bedroom_luigi:
		room_display = "Leonardo's room";
		break;
	case room_interrogation:
		room_display = "Interrogation Room";
		break;
}

draw_set_font(fnt_darling);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x, y, string(room_display));
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_color(-1);