/// @description Insert description here
// You can write your code in this editor

// Draws the outline of the textbox
draw_rectangle(gui_x - (box_width/2) - outline_thickness, gui_y - (box_height/2) - outline_thickness, gui_x + (box_width/2) + outline_thickness, gui_y + (box_height/2) + outline_thickness, false);

// Draws the backdrop of the texbox
draw_sprite(spr_textbox, 0, gui_x, gui_y);


// Sets the font
draw_set_font(fnt_textbox);

// Seperates the text string, so that only one character comes out each frame.
if (character_count < string_length(text[page])) {
	character_count += 1;
}
text_part = string_copy(text[page], 1, character_count);

// Draws the name
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(gui_x, gui_y - (box_height / 2) + y_buffer, name);

// Draws part of the text
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text_ext(gui_x - (box_width /2) + x_buffer, gui_y - str_height - y_buffer, text_part, str_height, box_width  - (2 * x_buffer));