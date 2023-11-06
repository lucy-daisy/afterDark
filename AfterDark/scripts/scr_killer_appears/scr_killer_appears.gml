// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_killer_appears(){
	if object_exists(obj_killer_spawn_location){
		var _spawn_x = obj_killer_spawn_location.x
		var _spawn_y = obj_killer_spawn_location.y
		instance_create_depth(_spawn_x, _spawn_y, 0, obj_killer);
		instance_destroy(obj_npc);
	} else {
		show_error("Error: No killer spawn location placed in room", true);
	}
}