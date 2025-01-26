move_speed = 1;
//tilemap
damage = 1;

global.Tiles_1 = layer_tilemap_get_id("Tiles_1");
tilemap_tileset(global.Tiles_1, asset_get_index("tile_set_" + string(irandom(2))));

max_hp = 100;
hp = 100;

alarm[1] = 60;
