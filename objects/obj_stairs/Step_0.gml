var idx = floor((global.current_level % (global.tileset_duplicates * global.tileset_total)) / global.tileset_duplicates);
if(instance_number(asset_get_index("obj_enemy_base")) > 0) {
	sprite_index = global.stair_locked_sprites[idx];
} else {
	sprite_index = global.stair_sprites[idx];
}
