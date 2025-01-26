// =======================
// Collision for bubblegun area
// =======================

//bug: projectile re-hits enemy. Maybe keep as feature, OR one hit per second?

alarm[0] = 10;

//show_message("HIT");
hp = hp - other.projectile_damage;
image_blend = c_white;
obj_enemy_base.move_speed = .1;

//instance_destroy();