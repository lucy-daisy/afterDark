/// @description Insert description here
// You can write your code in this editor

// Draw the background
draw_sprite_stretched
(
	spr_inventory, //The sprite
	0, //Frame
	x,
	y,
	12+row_length*36, //Width
	12+(((INVENTORY_SLOTS-1) div row_length)+1)*36 //Height
);

for (var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	var _xx = x + (i mod row_length) * 36 + 2;
	var _yy = y + (i div row_length) * 36 + 2;
	draw_sprite(spr_inventory_slot, 0, _xx, _yy);
	if (inventory[i] != -1)
	{
		draw_sprite(spr_item_test, inventory[i], _xx, _yy);
	}
}








