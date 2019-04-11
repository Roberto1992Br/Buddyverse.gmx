////////////offline ini keys

//nemesis
gms_ini_player_write('Save','nemesis',nemesis);
gms_ini_player_write('Save','nemesis_max_hp',nemesis_max_hp);
gms_ini_player_write('Save','nemesis_attack',nemesis_attack);
gms_ini_player_write('Save','nemesis_defense',nemesis_defense);

//sprites
gms_ini_player_write('Save','sprite_training',sprite_training);
gms_ini_player_write('Save','sprite_idle',sprite_idle);
gms_ini_player_write('Save','sprite_defeated',sprite_defeated);
gms_ini_player_write('Save','sprite_attack',sprite_attack);
gms_ini_player_write('Save','sprite_hurt',sprite_hurt);
gms_ini_player_write('Save','sprite_defend',sprite_defend);
gms_ini_player_write('Save','sprite_fight',sprite_fight);

//variables
gms_ini_player_write('Save','max_hp',max_hp);
gms_ini_player_write('Save','attack',attack);
gms_ini_player_write('Save','defense',defense);


///////////global ini keys


//variables
gms_ini_game_write(string(gms_self_name()),'name',name);
gms_ini_game_write(string(gms_self_name()),'max_hp',max_hp);
gms_ini_game_write(string(gms_self_name()),'attack',attack);
gms_ini_game_write(string(gms_self_name()),'defense',defense);

//sprites
gms_ini_game_write(string(gms_self_name()),'sprite_training',sprite_training);
gms_ini_game_write(string(gms_self_name()),'sprite_idle',sprite_idle);
gms_ini_game_write(string(gms_self_name()),'sprite_defeated',sprite_defeated);
gms_ini_game_write(string(gms_self_name()),'sprite_attack',sprite_attack);
gms_ini_game_write(string(gms_self_name()),'sprite_hurt',sprite_hurt);
gms_ini_game_write(string(gms_self_name()),'sprite_defend',sprite_defend);
gms_ini_game_write(string(gms_self_name()),'sprite_fight',sprite_fight);



/////////////////////score/////////////
gms_ini_game_write(string(gms_self_name()),'score',score);
//score = gms_ini_game_read(string(gms_self_name()),'score');


