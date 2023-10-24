///// @description Insert description here

cam_width = camera_get_view_width(view_camera[0]);
cam_height = camera_get_view_height(view_camera[0]);

//// Center on the player
if instance_exists(obj_player) {
	x = obj_player.x - (cam_width / 2);
	y = obj_player.y - (cam_height / 2);
}

//// Cut off camera movement when it reaches the edge of a room
x = clamp(x, 0, room_width - cam_width);
y = clamp(y, 0, room_height - cam_height);


//// Set camera position
camera_set_view_pos(view_camera[0], x, y);





