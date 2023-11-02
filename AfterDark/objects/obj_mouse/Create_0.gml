/// @description State Machine
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
	
	// Mouse Coordinates
	var _mx = mouse_x;
	var _my = mouse_y;
	
	// Check for inventory slot hover
	with (obj_inventory)
	{
		if (point_in_rectangle
		(
			_mx,
			_my,
			x - grid_margin,
			y - grid_margin,
			x - grid_margin + (grid_margin*2)+row_length*36,
			y - grid_margin + (grid_margin*2)+(((INVENTORY_SLOTS-1) div row_length)+1)*36
		))
		{
			// Check for mouseover in each slot
			for (var _i = 0; _i < INVENTORY_SLOTS; _i += 1)
			{
				var _xx = x + (_i mod row_length) * 36 + 2;
				var _yy = y + (_i div row_length) * 36 + 2;
				if (point_in_rectangle(_mx, _my, _xx, _yy, _xx+32, _yy+32))
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
	//Start to drag an item if slot is not empty
	if (mouse_check_button(mb_left)) && (slot_hover != -1) && (inventory_hover.inventory[slot_hover] != -1)
	{
		// Enter drag state
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
		// Swap with slot if hovering
		if (slot_hover != -1) inventory_swap(inventory_drag, slot_drag, inventory_hover, slot_hover);
		
		// Return to free state
		state = state_free;
		item_drag = -1;
		inventory_drag = -1;
		slot_drag = -1;
	}
}

state = state_free;