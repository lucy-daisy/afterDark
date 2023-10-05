/// @description Insert description here
// You can write your code in this editor

// Draws the outline of the textbox
draw_rectangle(x-2, y-2, x+box_width+2, y+box_height+2, false);
// Draws the backdrop of the texbox
draw_sprite(spr_textbox, 0, x, y);


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
draw_text(x + (box_width/2), y + y_buffer, name);

// Draws part of the text
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text_ext(x + x_buffer, y + str_height + y_buffer, text_part, str_height, box_width  - (2 * x_buffer));