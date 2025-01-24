// Collision with enemy
if (collision_point(x, y, obj_enemy_parent, true, true)) {
    instance_create_depth(x, y, depth, obj_enemy_1);  // Explosion effect
    instance_destroy();  // Destroy the projectile
}