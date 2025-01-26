// =======================
// Collision for bubblegun
// =======================
alarm[0] = 5;

//show_message("HIT");
//image_blend = c_red;
hp = hp - other.projectile_damage;


if (hp <= 0) {
    instance_destroy();
    //lpay death sound
}

//instance_destroy();