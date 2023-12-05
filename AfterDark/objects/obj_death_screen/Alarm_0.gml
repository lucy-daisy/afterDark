/// @description Change the slide

if current_slide < 4 {
	var _ins_i = instance_create_depth(0, 0, -999, obj_fade_transition);
		_ins_i.room_to_transform_to = rm_death_screen;
		_ins_i.fade_in_speed = .025;
		_ins_i.fade_out_speed = .025;
		_ins_i.black_duration = 1;
}