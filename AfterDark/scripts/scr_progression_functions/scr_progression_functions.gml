// Creates the fade in fade out transition between rooms
function fade_into_room(_new_room, _fade_in_speed, _fade_out_speed, _black_duration = 0){
	if (!instance_exists(obj_fade_transition)) {
		global.player_can_move = false;
		var _ins = instance_create_depth(0, 0, -999, obj_fade_transition);
		_ins.room_to_transform_to = _new_room;
		_ins.fade_in_speed = _fade_in_speed;
		_ins.fade_out_speed = _fade_out_speed;
		_ins.black_duration = _black_duration;
	}
}

function death_transition(_new_room){
	if (!instance_exists(obj_fade_transition)) {
		global.player_can_move = false;
		var _ins = instance_create_depth(0, 0, -999, obj_fade_transition);
		_ins.room_to_transform_to = _new_room;
		_ins.fade_in_speed = 1;
		_ins.fade_out_speed = .025;
		_ins.black_duration = 200;
	}
}


function next_level(){
	if room != rm_museum {
		fade_into_room(rm_museum, 0.0075, 0.0075);
	} 
	else {
		audio_stop_all();
		audio_play_sound(snd_bus, 0, 0);
		fade_into_room(obj_game_mgmt.level[obj_game_mgmt.current_level], 0.025, 0.025, 200)
	}
}

function player_dies(){
	audio_play_sound(snd_death, 0, 0);
	instance_destroy(obj_player);
	obj_game_mgmt.current_level += 1;
	if obj_game_mgmt.current_level < 6 {
		death_transition(rm_museum);
	}
	else {
		death_transition(rm_death_screen);
	}
		
}