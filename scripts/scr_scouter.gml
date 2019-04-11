//power level
if position_meeting(mouse_x,mouse_y,id) && !instance_exists(obj_menu_info){

if mouse_check_button_released(mb_left) && action != 'Fighting'{

if !instance_exists(obj_menu_info){
var temp = instance_create(room_width/2,room_height/2,obj_menu_info);
temp.alvo = id;
audio_play_sound(snd_effect_click,10,0);

if object_index = obj_enemy{
if !instance_exists(obj_fight_button){
instance_create(obj_menu_info.x,obj_menu_info.y-250,obj_fight_button);
}}

if object_index = obj_other_player_enemy{
if !instance_exists(obj_fight_button){
instance_create(obj_menu_info.x,obj_menu_info.y-250,obj_fight_button);
}}

}

}

depth = -100;

draw_set_colour(c_lime);
draw_set_alpha(0.5);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(1);

draw_sprite(spr_scouter_target,0,mouse_x,mouse_y);

draw_set_colour(c_yellow);
draw_set_font(fnt_medium);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(mouse_x+80,mouse_y,string(power_level));


} else{
depth = 0;
}

//hp bars in fight
if action = 'Fighting'{

if object_index = obj_hero{
var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(16, 16, 416, 48, pc, c_black, c_red, c_green, 0, true, true)}

if object_index = obj_enemy{
var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(544, 16, 992, 48, pc, c_black, c_red, c_green, 0, true, true)}

if object_index = obj_other_player_enemy{
var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(544, 16, 992, 48, pc, c_black, c_red, c_green, 0, true, true)}

}
