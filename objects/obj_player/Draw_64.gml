
// HealthBar Code
// use the hp and max_hp vars to get the values here. Auto updates based on hp value
var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(0, 20, 200, 0, pc, c_black, c_red, c_lime, 0, true, true)
draw_text(0, 0, "HEALTH")