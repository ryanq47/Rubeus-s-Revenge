
// HealthBar Code
// use the hp and max_hp vars to get the values here, set in an alarm to check every X frames/X secs
var pc;
pc = 100;//(hp / max_hp) * 100;
draw_healthbar(0, 20, 100, 0, pc, c_black, c_red, c_lime, 0, true, true)