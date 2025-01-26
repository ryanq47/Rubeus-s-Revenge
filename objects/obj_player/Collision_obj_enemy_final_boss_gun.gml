//
//reduce hp based on damage
hp = hp - other.damage;
//change color 
//image_blend = c_red;

sprite_index = spr_player_hurt_idle;

    


if hp <= 0 {
    instance_destroy();
    room_goto(set_you_died);
}
