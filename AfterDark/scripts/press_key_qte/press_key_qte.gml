// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function press_key_qte(){
	global.qte_going = true;
	p_key = keyboard_check_pressed(ord("p"));
	draw_text(0, 0, "Press P");
}