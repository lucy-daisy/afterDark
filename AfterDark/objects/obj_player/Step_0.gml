/// @description 


// The inputs for movement
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// Determines the direction the character should move
x_spd = (right_key - left_key) * move_spd;
y_spd = (down_key - up_key) * move_spd;

// Checks if the player is going to run into something, if so they cannot move in that direction
if place_meeting(x + x_spd, y, obj_wall) { x_spd = 0; }
if place_meeting(x, y + y_spd, obj_wall) { y_spd = 0; }

// Prevents the player from going offscreen
if (x + x_spd) < 0 or (x + x_spd) > room_width {x_spd = 0;}
if (y + y_spd) < 0 or (y + y_spd) > room_height {y_spd = 0;}

// Checks if the player reached the goal, if they have spawns the killer and destroyes the goal object
if place_meeting(x, y, obj_goal) {
	scr_killer_appears(1344, 346);
	with(obj_goal) { instance_destroy() };
}

//Checks if the player is colliding with the killer, if they are activates a QTE
if place_meeting(x, y, obj_killer) and (obj_killer.stunned == false) {
	//Instert QTE code
	if global.qte_going == false {
		instance_create_layer(x, y, "text", obj_qte_press_key);
		global.qte_going = true;
	}
}


// Moves the player
if global.qte_going == false {
	x += x_spd;
	y += y_spd;
}