// On hit with an enemy (Collision event or in the Step Event)


if (alarm[0] < 0) {
    // Stop movement by setting velocity to 0
    hspeed = 0;  // Horizontal velocity
    vspeed = 0;  // Vertical velocity
    
    
    // Change to explosion sprite
    sprite_index = spr_bubblegun_bullet_explosion;  // Set the explosion sprite
    alarm[0] = 5;
    
}

// Optionally, you can also destroy the object after a short delay (if you want it to stay on screen for a moment)


