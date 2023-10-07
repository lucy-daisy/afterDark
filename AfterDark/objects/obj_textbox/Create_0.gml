/// @description Insert description here
// You can write your code in this editor

// These two determine how close the text is to the edges of the text box.
x_buffer = 15;
y_buffer = 10;


text = "null";
page = 0;
box_height = sprite_get_height(spr_textbox);
box_width = sprite_get_width(spr_textbox);
str_height = string_height(text);
creator = noone;
character_count = 0;
name = noone;

gui_x = display_get_gui_width() / 2;
gui_y = display_get_gui_height() - (display_get_gui_height() / 6);

outline_thickness = 5;