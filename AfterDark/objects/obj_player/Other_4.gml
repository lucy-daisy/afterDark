/// @description Changes Sprites
// You can write your code in this editor
show_debug_message(string(obj_game_mgmt.current_level));

switch(obj_game_mgmt.current_level){

case 1:
	sprite[0] = spr_player_1_R;
	sprite[1] = spr_player_1_U;
	sprite[2] = spr_player_1_L;
	sprite[3] = spr_player_1_D;
break;

case 2:
	sprite[0] = spr_player_2_R;
	sprite[1] = spr_player_2_U;
	sprite[2] = spr_player_2_L;
	sprite[3] = spr_player_2_D;
break;

case 3:
	sprite[0] = spr_player_3_R;
	sprite[1] = spr_player_3_U;
	sprite[2] = spr_player_3_L;
	sprite[3] = spr_player_3_D;
break;

case 4:
	sprite[0] = spr_player_4_R;
	sprite[1] = spr_player_4_U;
	sprite[2] = spr_player_4_L;
	sprite[3] = spr_player_4_D;
break;

case 5:
	sprite[0] = spr_player_5_R;
	sprite[1] = spr_player_5_U;
	sprite[2] = spr_player_5_L;
	sprite[3] = spr_player_5_D;
break;
	
default:
	sprite[0] = spr_killer;
	sprite[1] = spr_killer;
	sprite[2] = spr_killer;
	sprite[3] = spr_killer;
break;
}

sprite_index = sprite[face]
