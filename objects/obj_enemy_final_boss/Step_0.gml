// Inherit the parent event - calls parent code
event_inherited();

// ===========
//Flame Gun
// ===========

if (alarm[2] <= 0 ) {

    // Create an object at the player's position
    var _inst = instance_create_depth(x, y, depth, obj_enemy_final_boss_gun); //obj_weapon_sword
    
    // Scale bubbles down
    _inst.image_xscale = 0.35;
    _inst.image_yscale = 0.35;
    
    // Set the bubble object's direction towards the mouse
    _inst.image_angle = point_direction(x, y, obj_player.x, obj_player.y);
    alarm[2] = 120
    
}

