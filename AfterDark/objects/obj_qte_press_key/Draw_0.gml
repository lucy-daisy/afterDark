/// @description The QTE instructions
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_qte);
draw_set_color(c_red);

text = "Press " + string_upper(correct_key) + "!"
draw_text(room_width/2, room_height/2, text);