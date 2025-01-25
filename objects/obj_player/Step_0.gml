//step is updated each step

// 1 when D, -1 when A is held
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))

// 1 when D, -1 when A is held
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))


//move_and_collide(_hor * move_speed, _ver * move_speed, tilemap)


//sprint stuff

if (_hor !=0 or _ver !=0){
    if (_ver > 0) sprite_index = spr_player_idle;
        
    else if (_ver < 0) sprite_index = spr_player_idle;
        
    else if (_hor > 0) sprite_index = spr_player_idle;
        
    else if (_hor < 0) sprite_index = spr_player_idle;
        
}

else {
    sprite_index = spr_player_walking;
        

}