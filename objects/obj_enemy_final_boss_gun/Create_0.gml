facing = point_direction(x, y, mouse_x, mouse_y); // Set facing direction towards mouse
image_angle = facing; // Rotate the projectile based on facing direction

projectile_speed = 3;
projectile_damage = 5;

//pop after 30 frames
alarm[0] = 30
