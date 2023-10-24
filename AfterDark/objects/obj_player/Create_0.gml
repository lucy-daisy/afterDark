/// @description 

// The character's movement speed, this can be adjusted if needed
move_spd = 3;

// These are used to determine what direction the character should move each Step
x_spd = 0;
y_spd = 0;

// Used later to freeze the character during QTEs
global.qte_going = false;

// Sprite control
move_direction = 0;
face = 0;
previous_face = 0;
sprite[0] = spr_player_1_R;
sprite[1] = spr_player_1_U;
sprite[2] = spr_player_1_L;
sprite[3] = spr_player_1_D;

sprite_index = sprite[face];