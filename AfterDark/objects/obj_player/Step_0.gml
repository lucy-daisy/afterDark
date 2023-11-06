/// @description 


// The inputs for movement
right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) or keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) or keyboard_check(ord("S"));

// Direction
#region
// Determines the direction the character should move, this will later determine which sprite should play
var _x_key = right_key - left_key;
var _y_key = down_key - up_key;

move_direction = point_direction(0, 0, _x_key, _y_key);

var _spd = 0;
var _input_level = point_distance(0, 0, _x_key, _y_key);
_input_level = clamp(_input_level, 0, 1);
_spd = move_spd * _input_level;

x_spd = lengthdir_x(_spd, move_direction);
y_spd = lengthdir_y(_spd, move_direction);
#endregion

// Collisions
#region
// Checks if the player is going to run into something, if so they cannot move in that direction
if place_meeting(x + x_spd, y, obj_wall) { x_spd = 0; }
if place_meeting(x, y + y_spd, obj_wall) { y_spd = 0; }

// Prevents the player from going offscreen
if (x + x_spd) < 0 or (x + x_spd) > room_width {x_spd = 0;}
if (y + y_spd) < 0 or (y + y_spd) > room_height {y_spd = 0;}

// Checks if the player reached the goal, if they have spawns the killer and destroyes the goal object
if place_meeting(x, y, obj_killer_trigger) {
	scr_killer_appears();
	with(obj_killer_trigger) { instance_destroy() };
}

// Checks if the player is touching a door, and if they are progressed to the next room
if place_meeting(x, y, obj_door) {
	next_level();
}

//Checks if the player is colliding with the killer, if they are activates a QTE
if place_meeting(x, y, obj_killer) and (obj_killer.stunned == false) {
	//Instert QTE code
	if global.qte_going == false {
		instance_create_layer(x, y, "text", obj_qte_press_key);
		global.qte_going = true;
	}
}
#endregion

// Movement
if global.qte_going == false {
	x += x_spd;
	y += y_spd;
}


// Sprite control
#region
// Determines what direction the player is moving in and figures out what sprite to use
face = round(move_direction/90);
if face == 4 {face = 0};

// If the player is not moving, do not animate the sprite and keep them facing the same direction
if x_spd == 0 and y_spd == 0 {
	image_index= 0;
	face = previous_face;
}

//Sets the sprite
previous_face = face;
sprite_index = sprite[face];
sprite_set_speed(sprite_index, 8, spritespeed_framespersecond);
#endregion