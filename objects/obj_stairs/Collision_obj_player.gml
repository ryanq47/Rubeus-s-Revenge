if(instance_number(asset_get_index("obj_enemy_base")) <= 0) {
	global.current_level++;
	if((global.current_level + 1) % (global.tileset_duplicates * global.tileset_total * 3) == 0)
		room_goto(set_win_screen);
	else if((global.current_level + 1) % (global.tileset_duplicates * global.tileset_total) == 0)
		room_goto(room_base_boss_room);
	else
		room_goto(asset_get_index("room_base_Child_" + string(irandom(5))));
}