/// @description When this activates, you fail the QTE
// You can write your code in this editor

// Destroy the player character
instance_destroy(obj_player);


// Destroy itself, so the QTE dissapears.
instance_destroy();