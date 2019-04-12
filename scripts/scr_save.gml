//////////// ini keys
var temp = gms_self_name();

//nemesis
gms_ini_game_write(string(temp),'nemesis',nemesis);
gms_ini_game_write(string(temp),'nemesis_max_hp',nemesis_max_hp);
gms_ini_game_write(string(temp),'nemesis_attack',nemesis_attack);
gms_ini_game_write(string(temp),'nemesis_defense',nemesis_defense);


//variables
gms_ini_game_write(string(gms_self_name()),'name',name);
gms_ini_game_write(string(temp),'max_hp',max_hp);
gms_ini_game_write(string(temp),'attack',attack);
gms_ini_game_write(string(temp),'defense',defense);





//sprites
var temp2 = sprite_index;
gms_ini_game_write(string(temp),'sprite',temp2);




/////////////////////score/////////////
gms_ini_game_write(string(gms_self_name()),'score',score);
//score = gms_ini_game_read(string(gms_self_name()),'score');


