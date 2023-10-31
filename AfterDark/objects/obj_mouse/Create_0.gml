/// @description Insert description here
// You can write your code in this editor
inventory_hover = -1;
slot_hover = -1;
inventory_drag = -1;
slot_drag = -1;
item_drag = -1;

mouse_over = function()
{
	//empty hover results
	slot_hover = -1;
	inventory_hover = -1;
	
	//mouse coordinates
	var _mx = mouse_x;
	var _my = mouse_y;
	
	//Check inventory for slot hover
	with(obj_inventory)
	{
		if (point_in_rectangle
		(
			_mx,
			_my,
			x-6,
			y-6,
			x-6 + 12 + row_length * 36,
			y-6 + 12 + (((INVENTORY_SLOTS-1) div row_length)+1)*36
		))
		{
			for (var _i = 0; _i < INVENTORY_SLOTS; _i += 1)
			{
				var _xx = x + (_i mod row_length) * 36 + 2;
				var _yy = y + (_i div row_length) * 36 + 2;
				if (point_in_rectangle(_mx, _my, _xx, _yy, _xx + 32, yy + 32))
				{
					other.slot_hover = _i;
					other.inventory_hover = id;
				}
			}
		}
	}
}

state_free = function()
{
	mouse_over();
	if (mouse_check_button(mb_left)) && (slot_hover != -1) && (inventory_hover.inventory[slot_hover] != -1)
	{
		state = state_drag;
		item_drag = inventory_hover.inventory[slot_hover];
		inventory_drag = inventory_hover;
		slot_drag = slot_hover;
	}
}

state_drag = function()
{
	mouse_over();
	if (!mouse_check_button(mb_left))
	{
		if (slot_hover != -1) inventory_swap(inventory_drag, slot_drag, inventory_hover, slot_hover)
		
		state = state_free;
		item_drag = -1;
		inventory_drag = -1;
		slot_drag = -1;
	}
}




