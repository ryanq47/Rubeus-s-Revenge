//Damage Checker alarm
//show_message("ALARM 1");
//change color on hit
image_blend = c_white;

if (hp <= 0) {
    image_blend = c_red;
    //switch to dead
    room_goto(room_ui_dead);
    //play death sound
    //audio_play_sound(windows_stop_sound, 10, false);
}
else {
    //play damage sound
}

//re prime
alarm[1] = 60;