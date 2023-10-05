/// @description Insert description here
// You can write your code in this editor

// These two determine how close the text is to the edges of the text box.
x_buffer = 10;
y_buffer = 10;

text = "null";
page = 0;
box_height = sprite_get_height(spr_textbox);
box_width = sprite_get_width(spr_textbox);
str_height = string_height(text);
creator = noone;
character_count = 0;
name = noone;