// Movement Code
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

// Default move speed
//var move_speed = 0.5;

// And randomly change direction every 60 steps (or adjust this value)
if (random(1) < 0.05) {
    direction += random_range(-45, 45);  // Randomly adjust direction
}

// ================
// Follow Function
// ================
// Follow function: if object exists and is within the value of distance_to_player, follow
if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player) {
    move_speed = 0.8;
    target_x = obj_player.x;
    target_y = obj_player.y;
    // If near player, increase move speed
}
// Otherwise, set a random target and move smoothly
else {
    // Set a random target position ahead of the character
    if (random(1) < 0.10) {  // Change target with low frequency
        var random_distance = 50;  // Distance to move in a straight line (e.g., 100 pixels)
        target_x = x + lengthdir_x(random_distance, direction);
        target_y = y + lengthdir_y(random_distance, direction);
    }

    // Move towards the target position
    _hor = clamp(target_x - x, -1, 1);
    _ver = clamp(target_y - y, -1, 1);
}

// Move the object, and stop if it collides with anything in the array (change to [obj_enemy_base, tilemap])
move_and_collide(_hor * move_speed, _ver * move_speed, [obj_enemy_base, tilemap]);
