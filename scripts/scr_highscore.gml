if score < 2000{
if gms_highscore_find_pos(1679,string(gms_self_name())) = -1{
gms_highscore_add(1679,score);
}
gms_highscore_replace(1679,score);
}

if score >= 2000 && score < 4000{
if gms_highscore_find_pos(1680,string(gms_self_name())) = -1{
gms_highscore_add(1680,score);
}
gms_highscore_replace(1680,score);
}

if score >= 4000 && score < 8000{
if gms_highscore_find_pos(1681,string(gms_self_name())) = -1{
gms_highscore_add(1681,score);
}
gms_highscore_replace(1681,score);
}
