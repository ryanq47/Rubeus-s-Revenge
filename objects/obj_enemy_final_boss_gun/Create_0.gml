facing = point_direction(x, y, obj_player.x, obj_player.y + random(45)); // Set facing direction towards mouse, with random 15 for y height
image_angle = facing; // Rotate the projectile based on facing direction

projectile_speed = 3;
projectile_damage = 5;
damage = 7;

//pop after X frames
alarm[0] = 75 //adjust this for how long the object survives
