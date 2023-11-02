/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(
	spr_inventory,
	0,
	x - grid_margin,
	y - grid_margin,
	(grid_margin * 2) + row_length*36,
	(grid_margin * 2) + (((INVENTORY_SLOTS - 1) div row_length)+1)*36
);

for (var _i = 0; _i < INVENTORY_SLOTS; _i += 1)
{
	var _xx = x + (_i mod row_length) * 36 + 2;
	var _yy = y + (_i div row_length) * 36 + 2;
	
	var _hover = (obj_mouse.inventory_hover == id) && (obj_mouse.slot_hover == _i)
	draw_sprite(spr_inventory_slot, _hover, _xx, _yy);
	
	if (inventory[_i] != -1)
	{
		var _alpha = 1.0;
		if (obj_mouse.inventory_drag == id) && (obj_mouse.slot_drag == _i) _alpha = 0.5;
		draw_set_alpha(_alpha);
		draw_sprite(spr_item_test, inventory[_i], _xx, _yy);
		draw_set_alpha(1.0);
	}
}