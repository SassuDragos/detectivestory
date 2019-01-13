/// @description Insert description here
// You can write your code in this editor

target_original = camera_get_view_target(view_camera[0]);
target = obj_playerCutscenes;
zoom = 1;
shake = 0;
rain = false;

current_zoom = zoom;
zoom_speed = 0.5;
zoom_max = 15;

original_view_wport = view_wport[0];
original_view_hport = view_hport[0];

if(rain == true)
{
	audio_play_sound(snd_rain, 10, true);
}else audio_stop_all();


//zoom
zoomBegi = false;
zoomPlayer = false;
zoomOut = false;
zoomChange = false;

/*
iw = display_get_width();
ih = display_get_height();

surface_resize(application_surface, iw, ih);

display_set_gui_size(iw, ih);

window_set_size(display_get_width(), display_get_height());
window_set_rectangle(0,0, display_get_width(), display_get_height());



camera_set_view_size(view_camera[0], iw, ih);
camera_set_view_pos(view_camera[0], x-(iw/2), y-(ih/2));
