
//change color on hit
image_blend = c_white;

if (hp <= 0) {
    instance_destroy();
    
    //play death sound
    audio_play_sound(windows_stop_sound, 10, false);
}
else {
    //play damage sound
}