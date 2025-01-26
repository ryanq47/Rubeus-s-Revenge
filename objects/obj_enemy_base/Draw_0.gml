// ===========
// Draw Code, draws bar on self
//===========

draw_self();
// Draw on object
var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(x+25, y, x, y-5, pc, c_black, c_red, c_lime, 0, true, true)
