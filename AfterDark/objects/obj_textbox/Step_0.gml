/// @description Insert description here
// You can write your code in this editor

text_key = keyboard_check_pressed(vk_space);

if text_key {
	// The first If checks to see if the text has finished typing. If not it will make all the text appear to skip the typing animation.
	if (character_count < string_length(text[page])) {
		character_count = string_length(text[page])
	} else if (page + 1 < array_length(text)){
		page += 1
	} else {
		instance_destroy()
		creator.alarm[1] = 1;
	}
}