/// @description Insert description here
// You can write your code in this editor

//DEBUGGING -- DELETE LATER
if keyboard_check_pressed(vk_tab) {
	player_dies();
}

// Sets up sound effects. The camera is the listener, so 3D sound is relative to it.
audio_listener_position(obj_camera.x, obj_camera.y, 0)



switch(room){

// Start Screen
case rm_start_menu:
	// Background music
	if !audio_is_playing(snd_city_ambiance) {
		audio_stop_all();
		audio_play_sound(snd_city_ambiance, 1, true);
	}
	
	// Checks in Enter Key is pressed
	if (keyboard_check_pressed(vk_enter)){
		fade_into_room(rm_museum, 0.0075, 0.0075);
	}
	
	break;

case rm_museum:
	// Background Music
	if !audio_is_playing(snd_museum_bgm) {
		audio_stop_all();
		audio_play_sound(snd_museum_bgm, .03, true);
	}
	break;

case rm_level_1:
	if !audio_is_playing(snd_rain) {
		audio_stop_all();
		audio_play_sound(snd_rain, .5, true);
	}
	break;

case rm_level_2:
	if !audio_is_playing(snd_city_ambiance) {
		audio_stop_all();
		audio_play_sound(snd_city_ambiance, .5, true);
	}
	break;

case rm_level_3:
	if !audio_is_playing(snd_city_ambiance) {
		audio_stop_all();
		audio_play_sound(snd_city_ambiance, .5, true);
	}
	break;
	
case rm_level_4:
	if !audio_is_playing(snd_city_ambiance) {
		audio_stop_all();
		audio_play_sound(snd_city_ambiance, .5, true);
	}
	break;
	
case rm_level_5:
	if !audio_is_playing(snd_city_ambiance) {
		audio_stop_all();
		audio_play_sound(snd_city_ambiance, .5, true);
	}
	break;

case rm_death_screen:
	// Checks in Enter Key is pressed
	if keyboard_check_pressed(vk_enter) {
		game_restart();
	}
	
	break;
}