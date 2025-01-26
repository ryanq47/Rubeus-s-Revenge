// ==================
//Movement
// ==================
//every step 
sprite_index = spr_player_idle;

// 1 when D, -1 when A is held
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))

// 1 when D, -1 when A is held
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))


move_and_collide(_hor * move_speed, _ver * move_speed, [global.Tiles_1])


//sprint stuff

if (_hor !=0 or _ver !=0){

    if (_ver > 0) sprite_index = spr_player_walking;
        
    else if (_ver < 0) sprite_index = spr_player_walking;
        
    else if (_hor > 0) sprite_index = spr_player_walking;
        
    else if (_hor < 0) sprite_index = spr_player_walking;
        
}

//else {
//    sprite_index = spr_player_idle;
//        
//}

// ==================
//Attacking
// ==================

//todo:
// Fix Collision Bug where it's colliding with itself

if ( mouse_check_button_pressed(mb_left)) {
    obj_player.player_weapon = obj_bubblegun;


    if (alarm[0] < 0) {
        // Set the animation speed to 0.5 (slows down the animation)
        sprite_index = spr_player_idle_shooting;
        
        // Create an object at the player's position
        var _inst = instance_create_depth(x, y, depth, obj_player.player_weapon); //obj_weapon_sword

        // Scale bubbles down
        _inst.image_xscale = 0.35;
        _inst.image_yscale = 0.35;
        
        // Set the bubble object's direction towards the mouse
        _inst.image_angle = point_direction(x, y, mouse_x, mouse_y);
    
        // Adjust damage (if needed)
        //_inst.damage *= damage; 

        alarm[0] = 15;
        
        
    }

    
}

if (keyboard_check_pressed(vk_space)) {

    if (alarm[0] < 0) {
        obj_player.player_weapon = obj_bubblegun_area;

        
        // Create an object at the player's position
        var _inst = instance_create_depth(x, y, depth, obj_player.player_weapon); //obj_weapon_sword
        // Scale bubbles down
        _inst.image_xscale = 0.45;
        _inst.image_yscale = 0.45;
        
        _inst.image_angle = point_direction(x, y, mouse_x, mouse_y);
        _inst.speed = 1.25;
        
        alarm[0] = 15;
    }
}



