audio_stop_all();
audio_play_sound(music_boss_fight, 10, true);

//vars for tracknig target
target_x = x;
target_y = y;


tilemap = layer_tilemap_get_id("room_border");
//current probs:


// they keep hitting eachother, maybe add code to keep each enemy a bit away from other objects

// border isn't perfect

// [X] add a wander option?

// on collision with player...
max_hp = 2000
hp = 2000;
damage = 25;

//Alarms
alarm[2] = 120 //set alarm for flame gun
alarm[3] = 360 //set alarm for spawn enemy
move_speed = .1;

//scale down
image_xscale = 0.5;
image_yscale = 0.5;
