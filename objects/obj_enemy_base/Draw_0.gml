// ===========
// Draw Code, draws bar on self
//===========

draw_self();
// Draw on object
var pc;
pc = (hp / max_hp) * 100;
//gets the health bar above the sprite, in the middle
draw_healthbar(x-(sprite_width/2), y-2, x + (sprite_width/2), y-4, pc, c_black, c_red, c_lime, 0, true, true)
