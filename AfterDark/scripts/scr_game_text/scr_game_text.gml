/// @param text_id
function scr_game_text(_text_id){
	
switch(_text_id) {

	case "credits":
		scr_text("             - Credits -");
		scr_text("Alfred An - Narrative Designer")
		scr_text("Tristan Moh - Technical Artist")
		scr_text("Lucy Myers - Producer")
		scr_text("Dalyn Oliver - Gameplay Engineer")
		scr_text("Special Thanks to Leo Arnold")
		scr_text("Tile Sets from zed and LimeZu on Itch.io. Sound Effects from Pixabay")
		break;

	case "dress":
		scr_text("A classical black TANK TOP paired with a SHORT SKIRT.");
		scr_text("The Victim, after wearing this outfit to attend a Halloween party,");
		scr_text("was stalked by a 36-year-old male who had murdered 6 people before.");
		scr_text("Subsequently, the victim was raped and killed by the stalker  in an alley at 3 am.");
		break;

	case "npc 1":
		scr_text("What the... (shocked)", "player1");
		scr_text("...Oh Shit! Maddi?!", "npc1");
		scr_text("It's me, Dylan!", "npc1");
		scr_text("Dylan!", "player1");
		scr_text("Oh My God, it's really you! What the hell are you doing here?", "player1");
		scr_text("What do you mean? (chuckle) I'm here for the EXHIBITION.", "npc1");
		scr_text("You think I'm stalking on you?", "npc1");
		scr_text("No, no... of course not.", "player1");
		scr_text("I'm just not expecting to see you here.", "player1");
		scr_text("It's... been a while since the last time we met when we were still in...", "player1");
		scr_text("High school. When we were still in the high school.", "npc1");
		scr_text("Right!", "player1");
		scr_text("......", "npc1");
		scr_text(".........", "player1");
		scr_text("So, what do you think the exhibition?", "npc1");
			scr_option("I like it!", "npc 1 - like");
			scr_option("it's heavy.", "npc 1 - heavy");
			scr_option("I hate it.", "npc 1 - no");
		break;
		case "npc 1 - like":
			scr_text("Well, I like it. I think it's a good show.", "player1");
			scr_text("I know right! What a POWERFUL exhibition!", "npc1");
			scr_text("I'm glad you think so.", "npc1");
			break;
		case "npc 1 - heavy":
			scr_text("It's good, but also a bit PATHETIC.", "player1");
			scr_text("...PATHETIC?.", "npc1");
			scr_text("Yeah.", "player1");
			scr_text("I just can't help myself thinking about those VICTIMS,", "player1");
			scr_text("especially that girl......", "player1");
				scr_option("thing could be different", "different");
				scr_option("wrong outfit", "wrong");
				scr_option("she deserves it", "deserve");
			break;
			case "different":
				scr_text("Maybe it could be different if she wasn't wearing tank top and short skirt.", "player1");
				scr_text("Maybe she could survive if she was wearing HOODIE and PANTS just like US.", "player1");
				scr_text("...", "npc1");
				scr_text("...yeah.", "npc1");
				scr_text("Maybe.", "npc1");
				break;
			case "wrong":
				scr_text("She shouldn't have worn those tank top and short skirt. It's too EXPOSED.", "player1");
				scr_text("...", "npc1");
				scr_text(".........", "npc1");
				break;
			case "deserve":
				scr_text("No wonder why she got raped as she was wearing those SLUTTY tank top and skirt!!!", "player1");
				scr_text("...", "npc1");
				scr_text(".........", "npc1");
		

	}

}