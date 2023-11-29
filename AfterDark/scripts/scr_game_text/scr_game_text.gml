/// @param text_id
function scr_game_text(_text_id){
	
switch(_text_id) {



	case "dress":
		scr_text("A classical black TANK TOP paired with a SHORT SKIRT.");
		scr_text("The Victim, after wearing this outfit to attend a Halloween party,");
		scr_text("was stalked by a 36-year-old male who had murdered 6 people before.");
		scr_text("Subsequently, the victim was raped and killed by the stalker in a alley at 3 am.");
		break;

	case "npc 1":
		scr_text("Hi, I'm NPC 01");
		scr_text("Do you like games?");
			scr_option("Yes", "npc 1 - yes");
			scr_option("Nope", "npc 1 - no");
		break;
		case "npc 1 - yes":
			scr_text("That is a Smart answer!");
			break;
		case "npc 1 - no":
			scr_text("FUCK YOU!");
			break;
		

	}

}