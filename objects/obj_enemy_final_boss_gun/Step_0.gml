// Step Event
x += lengthdir_x(projectile_speed, facing);  // Move in the direction based on facing
y += lengthdir_y(projectile_speed, facing);

if (alarm[0] <= 0) {
    sprite_index = spr_bubble_pop;

}