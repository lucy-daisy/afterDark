/// @description Insert description here
// You can write your code in this editor

// The inventory will have this many slots total
#macro INVENTORY_SLOTS 15

// Each individual row will have this many slots
row_length = 6;

// Actually creates the inventory array. Each slot will default to -1, which is empty.
inventory = array_create(INVENTORY_SLOTS, -1);

randomize();
inventory[0] = 0;
inventory[1] = 1;
inventory[2] = 2;