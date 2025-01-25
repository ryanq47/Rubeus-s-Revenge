
show_message("COLLWPLAYER");
//other is the instance of the player
hp -= other.damage;
image_blend = c_green;

kb_x = sign(x - other.x);
kb_y = sign(y - other.y);
//alarm[1] = 20;

show_message(other.hp);