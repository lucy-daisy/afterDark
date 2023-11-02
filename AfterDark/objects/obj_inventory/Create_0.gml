/// @description Insert description here
// You can write your code in this editor
//INVENTORY_SLOTS = 9

// How many slots in a row
//row_length = 3;

// Grid appearance
grid_margin = 6;

//Creates an array with how ever many slots are in inventory slots. Each slot consists of -1, which is empty. We can overide this later to fill slots.
inventory = array_create(INVENTORY_SLOTS, -1);

// Fills out specific slots in the inventory. Right of the equals is the specific inventory item it is.
randomize();
//inventory[0] = 0;
//inventory[1] = 1;
//inventory[2] = 0;