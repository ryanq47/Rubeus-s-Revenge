//step is updated each step

// 1 when D, -1 when A is held
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))

// 1 when D, -1 when A is held
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))


move_and_collide(_hor * move_speed, _ver * move_speed, tilemap)

//sprint stuff
//spr_player_walk_down
if (_hor !=0 or _ver !=0){
    if (_ver > 0) sprite_index = rubeus_idle_down;
        
    else if (_ver < 0) sprite_index = rubeus_idle_down;
        
    else if (_hor > 0) sprite_index = rubeus_idle_down;
        
    else if (_hor < 0) sprite_index = rubeus_idle_down;
        
    //remebers where player was moving to create sword in that direction
    facing = point_direction(0,0,_hor,_ver);
        
}

else {
    if (sprite_index == rubeus_idle_down) sprite_index = rubeus_idle_down;
        
    if (sprite_index == rubeus_idle_down) sprite_index = rubeus_idle_down;
    
    if (sprite_index == rubeus_idle_down) sprite_index = rubeus_idle_down;
    
    if (sprite_index == rubeus_idle_down) sprite_index = rubeus_idle_down;
}

//attacking

if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
    // Create an object at the player's position
    var _inst = instance_create_depth(x, y, depth, obj_weapon_sword);
    
    // Set the sword's direction towards the mouse
    _inst.image_angle = point_direction(x, y, mouse_x, mouse_y);
    
    // Adjust damage (if needed)
    _inst.damage *= damage;
}
