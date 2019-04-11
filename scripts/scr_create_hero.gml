action = 'Idle';
image_speed = 0;

//name
var temp = gms_self_name();

if gms_ini_game_exists(temp,'name'){
name = gms_ini_game_read(temp,'name');
} else{
gms_ini_game_write(temp,'name',temp);
name = gms_ini_game_read(temp,"name");
}




//score
if gms_ini_game_exists(string(gms_self_name()),'score'){
score = gms_ini_game_read(string(gms_self_name()),'score');
scr_highscore();
} else {
gms_ini_game_write(string(gms_self_name()),'score',0);
score = 0;
scr_highscore();
}



race = 'Bayajin';


//nemesis
nemesis = 'Boku';
nemesis_max_hp = 200;
nemesis_attack = 20;
nemesis_defense = 10;

if gms_ini_player_exists('Save','nemesis'){
nemesis = gms_ini_player_read("Save","nemesis");
} else {
gms_ini_player_write('Save','nemesis',nemesis);
nemesis = string(gms_ini_player_read("Save","nemesis"));
}

if gms_ini_player_exists('Save','nemesis_max_hp'){
nemesis_max_hp = gms_ini_player_read("Save","nemesis_max_hp");
} else {
gms_ini_player_write('Save','nemesis_max_hp',nemesis_max_hp);
nemesis_max_hp = gms_ini_player_read("Save","nemesis_max_hp");
}

if gms_ini_player_exists('Save','nemesis_attack'){
nemesis_attack = gms_ini_player_read("Save","nemesis_attack");
} else {
gms_ini_player_write('Save','nemesis_attack',nemesis_attack);
nemesis_attack = gms_ini_player_read("Save","nemesis_attack");
}

if gms_ini_player_exists('Save','nemesis_defense'){
nemesis_defense = gms_ini_player_read("Save","nemesis_defense");
} else {
gms_ini_player_write('Save','nemesis_defense',nemesis_defense);
nemesis_defense = gms_ini_player_read("Save","nemesis_defense");
}

//sprites
sprite_training = spr_bayajin_train;
sprite_idle = spr_bayajin;
sprite_defeated = spr_bayajin_defeated;
sprite_fight = spr_bayajin_fight;
sprite_attack = spr_bayajin_train;
sprite_hurt = spr_bayajin_hurt;
sprite_defend = spr_bayajin_defend;
//rest = spr_bayajin_rest;

if gms_ini_player_exists('Save','sprite_training'){
sprite_training = gms_ini_player_read("Save","sprite_training");
} else {
gms_ini_player_write('Save','sprite_training',spr_bayajin_train);
sprite_training = gms_ini_player_read("Save","sprite_training");
}

if gms_ini_player_exists('Save','sprite_idle'){
sprite_idle = gms_ini_player_read("Save","sprite_idle");
} else {
gms_ini_player_write('Save','sprite_idle',spr_bayajin);
sprite_idle = gms_ini_player_read("Save","sprite_idle");
}

if gms_ini_player_exists('Save','sprite_defeated'){
sprite_defeated = gms_ini_player_read("Save","sprite_defeated");
} else {
gms_ini_player_write('Save','sprite_defeated',spr_bayajin_defeated);
sprite_defeated = gms_ini_player_read("Save","sprite_defeated");
}

if gms_ini_player_exists('Save','sprite_fight'){
sprite_fight = gms_ini_player_read("Save","sprite_fight");
} else {
gms_ini_player_write('Save','sprite_fight',spr_bayajin_fight);
sprite_fight = gms_ini_player_read("Save","sprite_fight");
}

if gms_ini_player_exists('Save','sprite_attack'){
sprite_attack = gms_ini_player_read("Save","sprite_attack");
} else {
gms_ini_player_write('Save','sprite_attack',spr_bayajin_train);
sprite_attack = gms_ini_player_read("Save","sprite_attack");
}

if gms_ini_player_exists('Save','sprite_hurt'){
sprite_hurt = gms_ini_player_read("Save","sprite_hurt");
} else {
gms_ini_player_write('Save','sprite_hurt',spr_bayajin_hurt);
sprite_hurt = gms_ini_player_read("Save","sprite_hurt");
}

if gms_ini_player_exists('Save','sprite_defend'){
sprite_defend = gms_ini_player_read("Save","sprite_defend");
} else {
gms_ini_player_write('Save','sprite_defend',spr_bayajin_defend);
sprite_defend = gms_ini_player_read("Save","sprite_defend");
}

//variables
max_hp = 100;
attack = 10;
defense = 5;

if gms_ini_player_exists('Save','max_hp'){
max_hp = gms_ini_player_read("Save","max_hp");
} else {
gms_ini_player_write('Save','max_hp',max_hp);
max_hp = gms_ini_player_read("Save","max_hp");
}

if gms_ini_player_exists('Save','attack'){
attack = gms_ini_player_read("Save","attack");
} else {
gms_ini_player_write('Save','attack',attack);
attack = gms_ini_player_read("Save","attack");
}

if gms_ini_player_exists('Save','defense'){
defense = gms_ini_player_read("Save","defense");
} else {
gms_ini_player_write('Save','defense',defense);
defense = gms_ini_player_read("Save","defense");
}

hp = max_hp;

//
power_level = 100;

xp = 0;
next_level = 10;
level = 1;

points = 0;


target = noone;
buff = noone;
transformation = noone;

delay = 0;

//breathing effect
amplitude = 0.05;
frequency = 0.05;
timer = 0;
stretch = 1;

alarm[2] = 9000;

