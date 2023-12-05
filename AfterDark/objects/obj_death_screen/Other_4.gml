/// @description Insert description here
// You can write your code in this editor
if room != rm_death_screen{
	instance_destroy();
} else {
	current_slide += 1;
	alarm[0] = slide_duration;
}