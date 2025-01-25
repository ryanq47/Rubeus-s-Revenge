//on contact with enemy parent class

//only works once... weird. Might be the else statment

//run every 60 frames, aka 1 second
if (alarm[1] < 0){
    //on checkin of every second...
    
    //reduce hp based on damage
    hp -= other.damage;
    //change color 
    image_blend = c_red;

    //and re-arm alarm to count down from 60
    alarm[1] = 60;
    
}
