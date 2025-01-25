speed = 5;
damage = 10;
facing = point_direction(x, y, mouse_x, mouse_y); // Set facing direction towards mouse
image_angle = facing; // Rotate the projectile based on facing direction


//for collision:
// Collision with enemy
//if (collision_point(x, y, obj_enemy_parent, true, true)) {
//    instance_create_depth(x, y, depth, obj_enemy_1);  // Explosion effect
//    instance_destroy();  // Destroy the projectile
//}

//create sound