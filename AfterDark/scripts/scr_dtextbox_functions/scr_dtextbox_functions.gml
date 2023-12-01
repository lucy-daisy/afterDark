function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_spr[page_number] = spr_dtextbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	}
	

/// @param text
/// @param [character]
function scr_text(_text){
	
	scr_set_defaults_for_text();

	text[page_number] = _text;


	//get character info
	if argument_count > 1 {
		switch(argument[1])
			{
			
			case "player1":
				speaker_sprite[page_number] = spr_player1_spk;
				txtb_spr[page_number] = spr_dtextbox_blue;
				break;
				
			case "npc1":
				speaker_sprite[page_number] = spr_npc1_spk;
				txtb_spr[page_number] = spr_dtextbox_green;
				break;
				
				
			}
		}




	page_number++;

}


/// @param option
/// @param link_id
function scr_option(_option, _link_id){
	
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
	
}


/// @param text_id
function create_textbox(_text_id){
	
	with( instance_create_depth(0, 0, -9999, obj_dtextbox) )
		{
		scr_game_text(_text_id);
		}

}