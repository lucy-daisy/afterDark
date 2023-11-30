if (surface_exists(surface)) {
	
var _cw = camera_get_view_width(view_camera[0]);
var _ch = camera_get_view_height(view_camera[0]);
var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);


	//target
	surface_set_target(surface);
	
	
	//draw
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0,0, _cw, _ch, 0);
	
gpu_set_blendmode(bm_subtract);

	with(spr_lightcenter) {
		
	draw_sprite_ext(spr_lightbulb, 0, x - _cx, y - _cy, 0.5 + random(0.05), 0.5 + random(0.05), 0, c_white, 1);
	
	}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	//reset
	surface_reset_target();
	draw_surface(surface, _cx, _cy);
	}
	

if (!surface_exists(surface)) {
	var _cw = camera_get_view_width(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	
	surface = surface_create(_cw, _ch);
	
	surface_set_target(surface);
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0,0, _cw, _ch, 0);
	
	surface_reset_target();
	}