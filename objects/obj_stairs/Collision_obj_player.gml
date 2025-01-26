if(!variable_global_exists("current_level")) {
	randomise();
	global.current_level = 0;
}


if(instance_number(asset_get_index("obj_enemy_base")) <= 0) {
	global.current_level++;
	room_goto(asset_get_index("room_base_Child_" + string(irandom(5))));
}