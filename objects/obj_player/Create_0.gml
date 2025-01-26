move_speed = 1;
//tilemap
damage = 1;

global.Tiles_1 = layer_tilemap_get_id("Tiles_1");
var idx = floor((global.current_level % (global.tileset_duplicates * global.tileset_total)) / global.tileset_duplicates);
tilemap_tileset(global.Tiles_1, global.tile_sets[idx]);

var background_layer_id = layer_get_id("Background");
var background = layer_background_get_id(background_layer_id);
layer_background_sprite(background, global.background_sprites[idx]);

max_hp = 100;
hp = global.player_health;

alarm[1] = 60;
