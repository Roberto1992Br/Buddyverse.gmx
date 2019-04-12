action = 'Idle';
image_speed = 0;
var temp = gms_self_name();

//name
if gms_ini_game_exists(temp,'name'){
name = string(gms_ini_game_read(temp,'name'));
} else{
gms_ini_game_write(temp,'name',temp);
name = string(gms_ini_game_read(temp,"name"));
}




//score
if gms_ini_game_exists(string(temp),'score'){
score = gms_ini_game_read(string(temp),'score');
scr_highscore();
} else {
gms_ini_game_write(string(temp),'score',0);
score = 0;
scr_highscore();
}


//race
race = 'Bayajin';


//nemesis//////////////////////
//nemesis name
if gms_ini_game_exists(string(temp),'nemesis'){
nemesis = string(gms_ini_game_read(string(temp),'nemesis'));
} else {
gms_ini_game_write(string(temp),'nemesis','Boku');
nemesis = string(gms_ini_game_read(string(temp),'nemesis'));
}

//nemesis max hp
if gms_ini_game_exists(string(temp),'nemesis_max_hp'){
nemesis_max_hp = gms_ini_game_read(string(temp),'nemesis_max_hp');
} else {
gms_ini_game_write(string(temp),'nemesis_max_hp',200);
nemesis_max_hp = gms_ini_game_read(string(temp),'nemesis_max_hp');
}

//nemesis attack
if gms_ini_game_exists(string(temp),'nemesis_attack'){
nemesis_attack = gms_ini_game_read(string(temp),'nemesis_attack');
} else {
gms_ini_game_write(string(temp),'nemesis_attack',20);
nemesis_attack = gms_ini_game_read(string(temp),'nemesis_attack');
}

//nemesis defense
if gms_ini_game_exists(string(temp),'nemesis_defense'){
nemesis_defense = gms_ini_game_read(string(temp),'nemesis_defense');
} else {
gms_ini_game_write(string(temp),'nemesis_defense',10);
nemesis_defense = gms_ini_game_read(string(temp),'nemesis_defense');
}

//sprites


if gms_ini_game_exists(string(temp),'sprite'){
sprite_index = string(gms_ini_game_read(string(temp),'sprite'));
} else {
//gms_ini_game_write(string(temp),'sprite',spr_Mayajin);
//sprite_index = string(gms_ini_game_read(string(temp),'sprite'));
}

//variables charactter///////////////

//max hp
if gms_ini_game_exists(string(temp),'max_hp'){
max_hp = gms_ini_game_read(string(temp),'max_hp');
} else {
gms_ini_game_write(string(temp),'max_hp',100);
max_hp = gms_ini_game_read(string(temp),'max_hp');
}

//attack
if gms_ini_game_exists(string(temp),'attack'){
attack = gms_ini_game_read(string(temp),'attack');
} else {
gms_ini_game_write(string(temp),'attack',10);
attack = gms_ini_game_read(string(temp),'attack');
}

//defense
if gms_ini_game_exists(string(temp),'defense'){
defense = gms_ini_game_read(string(temp),'defense');
} else {
gms_ini_game_write(string(temp),'defense',5);
defense = gms_ini_game_read(string(temp),'defense');
}

hp = max_hp;

// etc variables
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

//autosave
alarm[2] = 9000;

