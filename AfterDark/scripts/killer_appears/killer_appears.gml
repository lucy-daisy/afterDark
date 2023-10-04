// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function killer_appears(_spawn_x, _spawn_y){
	instance_create_depth(_spawn_x, _spawn_y, 0, obj_killer);
}