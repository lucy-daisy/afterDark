depth = -9999;

global.font_main = font_add_sprite(spr_main_font, 32, true, 1);


//textbox parameters
textbox_width = 160;
textbox_height = 47;
border = 6;
line_sep = 10;
line_width = textbox_width - border*2;
txtb_spr = spr_dtextbox;
txtb_img = 0;
txtb_img_spd = 6/60;

//the text
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;