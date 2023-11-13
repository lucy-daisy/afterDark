if (state == fade_in) {
	image_alpha += fade_in_speed;
	if (image_alpha >= 1) {
		state = completely_black;
	}
}
else if (state == completely_black) {
	image_alpha = 1;
	black_duration -= 1;
	if black_duration <= 0 {
		state = fade_out;
		room_goto(room_to_transform_to);
	}
}
else if (state == fade_out) {
	image_alpha -= fade_out_speed;
	if (image_alpha <= 0) {
		image_alpha = 0;
		global.player_can_move = true;
		instance_destroy();
	}
}