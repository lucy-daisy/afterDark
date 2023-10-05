/// @description
// You can write your code in this editor

// Pick a random letter from the alphebet
alphebet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U","V", "W", "X", "Y", "Z"]
randomize();
correct_key = alphebet[random_range(0, array_length(alphebet))];

// Sets the timer for the QTE, if if goes off then you lose.

alarm[0] = obj_killer.qte_timelimit;