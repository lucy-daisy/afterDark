// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventory_search(_root_object, _item_type)
{
	for (var _i = 0; _i < INVENTORY_SLOTS; _i += 1)
	{
		if (_root_object.inventory[_i] == _item_type)
		{
			return(_i);
		}
	}
	return(-1);
}

function inventory_remove(_root_object, _item_type) {
	var _slot = inventory_search(_root_object, _item_type);
	if (_slot != -1)
	{
		with (_root_object) inventory[_slot] = -1;
		return true;
	}
	else return false;
}

function inventory_add(_root_object, _item_type) {
	var _slot = inventory_search(_root_object, -1);
	if (_slot != -1)
	{
		with (_root_object) inventory[_slot] = _item_type;
		return true;
	}
	else return false;
}

function inventory_swap(_object_from, _slot_from, _object_to, _slot_to) {
	var _item_from = _object_from.inventory[_slot_from];
	_object_from.inventory[_slot_from] = _object_to.inventory[_slot_to];
	_object_to.inventory[_slot_to] = _item_from;
}