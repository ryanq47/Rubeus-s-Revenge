//follow function
if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player)
{
    target_x = obj_player.x;
    target_y = obj_player.y;
}

else
{
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}

//re prime alarm to run every 60 frames
alarm[0] = 60;
 