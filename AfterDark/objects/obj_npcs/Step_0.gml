//if position_meeting(mouse_x, mouse_y,id) && mouse_check_button_pressed(mb_left)

if place_meeting(x, y, obj_player) && !instance_exists(obj_dtextbox) {
	my_indicator.visible = true;
} else {
	my_indicator.visible = false;
}

if place_meeting(x, y, obj_player) && keyboard_check_pressed(vk_space) && !instance_exists(obj_dtextbox) {
	
	create_textbox(text_id);

}