var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

//stop when colides wtih anything in that array, so the tilemap, or itself
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);