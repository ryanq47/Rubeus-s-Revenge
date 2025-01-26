// ================
// Alarm 0, used for making shards dissapear
// ================
audio_play_sound(sfx_bubble_pop, 10, false);
//destory shard object
instance_destroy();
//and reset the alarm
//alarm[0] = 5;