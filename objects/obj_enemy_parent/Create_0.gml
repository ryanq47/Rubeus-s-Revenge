target_x = x;
target_y = y;

//run 60 frames after this is called, in this case, every second
alarm[0] = 60;

tilemap = layer_tilemap_get_id("tiles_collision")

//knockback
kb_x = 0;
kb_y = 0;