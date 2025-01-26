
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
    move_speed = attack_player_move_speed;//0.3;
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
move_and_collide(_hor * move_speed, _ver * move_speed, [obj_enemy_base, global.Tiles_1]);
// ===========
//Flame Gun
// ===========

if (alarm[2] <= 0 ) {

    // Create an object at the player's position
    var _inst = instance_create_depth(x, y, depth, obj_enemy_final_boss_gun); //obj_weapon_sword
    
    // Scale bubbles down
    _inst.image_xscale = 0.35;
    _inst.image_yscale = 0.35;
    
    // Set the bubble object's direction towards the player
    //WHY IS IT NOT AIMING AT PLAYER?? IT WAS WORKING
    _inst.image_angle = point_direction(x, y, obj_player.x, obj_player.y);
    alarm[2] = 30; //how often to shoot
    
}


// ===========
// Mob Spawn
// ===========
if (alarm[3] <= 60 ) {

        for (var i = 0; i < 3; i += 1) {
            
        
            var _inst = instance_create_depth(x-50, y, depth, obj_enemy_testing); //obj_weapon_sword
        
            _inst.image_xscale = 0.5;
            _inst.image_yscale = 0.5;
            _inst.distance_to_player = 200; // make it follow player up to 200 pixels away, and "attack" player on spawn
                
            // Set the bubble object's direction towards the player
            //WHY IS IT NOT AIMING AT PLAYER?? IT WAS WORKING
            //_inst.image_angle = point_direction(x, y, obj_player.x, obj_player.y);
            
            alarm[3] = 360
    }
    

}


//if (hp <= 500) {
//    audio_play_sound(sfx_plankton, 10, false);
//    //room_goto(set_win_screen);
//
//    
//}

// ==================
// DEATH EVENT
// ==================

if (hp <= 0) {
    audio_stop_all();
    audio_play_sound(sfx_boss_explosion, 10, false)
    sprite_index = spr_fx_explosion;
    //audio_play_sound(sfx_plankton, 10, false);
    //room_goto(set_win_screen);

    
}




