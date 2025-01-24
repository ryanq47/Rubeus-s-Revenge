//damage for sword

if (alarm[1] < 0){
    //other is the instance of the swod
    hp -= other.damage;
    image_blend = c_red;
    
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    alarm[1] = 20;
}