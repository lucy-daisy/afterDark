/// @description The QTE instructions
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_qte);
draw_set_color(c_red);
gui_center_h = display_get_gui_width() / 2;
gui_center_v = display_get_gui_height() / 2;


text = "Press " + string_upper(correct_key) + "!"
draw_text(gui_center_h, gui_center_v, text);