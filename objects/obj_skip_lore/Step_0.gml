// Get mouse position

// Check if mouse is hovering over the button
if (mouse_x >= x && mouse_x <= x + button_width && mouse_y >= y && mouse_y <= y + button_height) {
    button_state = "hover";  // Change state to hover
    if (mouse_check_button_pressed(mb_left)) {
        button_state = "pressed";  // Change state to pressed when clicked
        //shut off music at game start
        audio_stop_all();
        audio_play_sound(music_cave_jam, 10, true);
        //room_goto(room_base_Child_0);  // Replace with your action
        room_goto(room_base_Child_0);  // Replace with your action
    }
} else {
    button_state = "idle";  // Set state back to idle when not hovered
}
