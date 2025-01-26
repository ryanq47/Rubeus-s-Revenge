//obj_bubblegun_area.speed = 10;
//obj_bubblegun_area.damage = 10;
facing = point_direction(x, y, mouse_x, mouse_y); // Set facing direction towards mouse
image_angle = facing; // Rotate the projectile based on facing direction

projectile_speed = 2;
projectile_damage = 25;
//for collision:
// Collision with enemy
//if (collision_point(x, y, obj_enemy_parent, true, true)) {
//    instance_create_depth(x, y, depth, obj_enemy_1);  // Explosion effect
//    instance_destroy();  // Destroy the projectile
//}

//create sound

//=============
// PARTICLES
//=============

// In the Create Event of obj_bubblegun
particle_system = part_system_create();  // Create a particle system
particle_type = part_type_create();  // Create a new particle type for bubbles

// Set properties for the bubble particles (small bubbles trailing behind)
part_type_shape(particle_type, pt_shape_circle);  // Use circle shape
part_type_size(particle_type, 0.05, 0.10, 0, 0);  // Set particle size (min 0.1, max 0.3, no growth)
part_type_color1(particle_type, c_white);  // Set color of the particles
//part_type_alpha(particle_type, 1, 0);  // Fade particles as they move
part_type_life(particle_type, 3, 5);  // Set lifespan of the particle

// Set the particle direction to follow the bubble, with slight spread
part_type_direction(particle_type, image_angle - 10, image_angle + 10, 0, 0);  // Direction with a slight spread
part_type_speed(particle_type, 0, 0, 0, 0);  // Set particle speed (adjust as necessary)

