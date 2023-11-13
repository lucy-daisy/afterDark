// Creates the fade in fade out transition between rooms
function fade_into_room(_new_room, _fade_in_speed, _fade_out_speed){
	if (!instance_exists(obj_fade_transition)) {
		global.player_can_move = false;
		var _ins = instance_create_depth(0, 0, -999, obj_fade_transition);
		_ins.room_to_transform_to = _new_room;
		_ins.fade_in_speed = _fade_in_speed;
		_ins.fade_out_speed = _fade_out_speed;
	}
}

function death_transition(_new_room){
	if (!instance_exists(obj_fade_transition)) {
		global.player_can_move = false;
		var _ins = instance_create_depth(0, 0, -999, obj_fade_transition);
		_ins.room_to_transform_to = _new_room;
		_ins.fade_in_speed = 1;
		_ins.fade_out_speed = .025;
		_ins.black_duration = 100;
	}
}


function next_level(){
	if room != rm_museum {
		fade_into_room(rm_museum, 0.0075, 0.0075);
	} 
	else {
		fade_into_room(obj_game_mgmt.level[obj_game_mgmt.current_level], 0.05, 0.05)
	}
}

function player_dies(){
	instance_destroy(obj_player);
	obj_game_mgmt.current_level += 1;
	if obj_game_mgmt.current_level < 6 {
		death_transition(rm_museum);
	}
	else {
		death_transition(rm_death_screen);
	}
		
}