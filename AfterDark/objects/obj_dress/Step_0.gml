if position_meeting(mouse_x, mouse_y,id) && mouse_check_button_pressed(mb_left)
	{
	with( instance_create_depth(0, 0, -9999, obj_dtextbox) )
		{
		scr_text("A classical black TANK TOP paired with a SHORT SKIRT.");
		scr_text("The Victim, after wearing this outfit to attend a Halloween party,");
		scr_text("was stalked by a 36-year-old male who had murdered 6 people before.");
		scr_text("Subsequently, the victim was raped and killed by the stalker in a alley at 3 am.");
		}
	}