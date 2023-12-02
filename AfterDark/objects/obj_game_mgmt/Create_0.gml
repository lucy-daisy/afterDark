/// @description Insert description here
// You can write your code in this editor

window_set_caption("After Dark");


current_level = 1;

level[1] = rm_level_1;
level[2] = rm_level_2;
level[3] = rm_level_3;
level[4] = rm_level_4;
// level[5] = rm_level_5;


// Sound effects
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_listener_orientation(0,1,0, 0,0,1);


global.player_can_move = true;
