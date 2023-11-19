/// @description Insert description here


move_speed =	2;
recovery_time = 60;
qte_timelimit = 120;

stunned = false;


//Sprite Control
face = 0;
sprite[0] = spr_killer_R;
sprite[1] = spr_killer_U;
sprite[2] = spr_killer_L;
sprite[3] = spr_killer_D;

sprite_index = sprite[face];


// Start playing sound
emit = audio_emitter_create();
audio_play_sound_on(emit, snd_heartbeat, true, 1);

alarm_timer = 5 * 60;
alarm[1] = alarm_timer;
