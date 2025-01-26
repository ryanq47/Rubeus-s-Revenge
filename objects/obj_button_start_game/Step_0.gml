// Get mouse position

// Check if mouse is hovering over the button
if (mouse_x >= x && mouse_x <= x + button_width && mouse_y >= y && mouse_y <= y + button_height) {
    button_state = "hover";  // Change state to hover
    if (mouse_check_button_pressed(mb_left)) {
        button_state = "pressed";  // Change state to pressed when clicked
        // Perform the button action (for example, go to another room)
        //show_message("PRESSED");
        //doesn't go to room??
        room_goto(set_you_died);  // Replace with your action
    }
} else {
    button_state = "idle";  // Set state back to idle when not hovered
}

// Optional: Change sprite based on state
switch (button_state) {
    case "hover":
        //sprite_index = spr_button_hover;  // Set sprite to hover version
        break;
    case "pressed":
        //sprite_index = spr_button_pressed;  // Set sprite to pressed version
        room_goto(room_base);
        break;
    default:
        //sprite_index = spr_button_idle;  // Set sprite to idle version
        break;
}