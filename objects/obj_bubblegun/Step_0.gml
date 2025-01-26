// Step Event
x += lengthdir_x(projectile_speed, facing);  // Move in the direction based on facing
y += lengthdir_y(projectile_speed, facing);


//=============
// PARTICLES
//=============
// Move the bubble in the direction of the mouse with the specified speed
//var speed = 10;  // Adjust as needed

// Move the bubble in the direction of the mouse
x += lengthdir_x(projectile_speed, image_angle);
y += lengthdir_y(projectile_speed, image_angle);

// Emit multiple particles behind the bubble to create a stream of small bubbles
var trail_offset = 15;  // Distance behind the bubble where particles are created
for (var i = 0; i < 1; i++) {
    var offset_x = x - lengthdir_x(trail_offset + i, image_angle);  // Slightly increase offset for each particle
    var offset_y = y - lengthdir_y(trail_offset + i, image_angle);  // Slightly increase offset for each particle
    part_particles_create(particle_system, offset_x, offset_y, particle_type, 1);  // Emit particles in a stream
}


