if obj_hero.alarm[1] = -1{
if instance_exists(target){


var sorteio = choose('Ataca','Defende','Toma Dano','Inimigo Defende');

if sorteio = 'Ataca'{
obj_hero.sprite_index = obj_hero.sprite_attack;
obj_hero.image_index = irandom(2);

target.sprite_index = target.sprite_hurt;

if obj_hero.image_index = 0{
target.hp -= obj_hero.attack;
var temp = instance_create(target.x,target.y,obj_damage);
temp.damage = obj_hero.attack;
}

if obj_hero.image_index = 1{
target.hp -= (obj_hero.attack)*1.2;;
var temp = instance_create(target.x,target.y,obj_damage);
temp.damage = obj_hero.attack*1.2;
}

if obj_hero.image_index = 2{
target.hp -= (obj_hero.attack)*1.5;
var temp = instance_create(target.x,target.y,obj_damage);
temp.damage = obj_hero.attack*1.5;
}



}

if sorteio = 'Toma Dano'{

target.sprite_index = target.sprite_attack;
target.image_index = irandom(2);

obj_hero.sprite_index = sprite_hurt;

if target.image_index = 0{
obj_hero.hp -= target.attack;
var temp = instance_create(obj_hero.x,obj_hero.y,obj_damage);
temp.damage = target.attack;
}

if target.image_index = 1{
obj_hero.hp -= (target.attack)*1.2;
var temp = instance_create(obj_hero.x,obj_hero.y,obj_damage);
temp.damage = target.attack*1.2;
}

if target.image_index = 2{
obj_hero.hp -= (target.attack)*1.5;
var temp = instance_create(obj_hero.x,obj_hero.y,obj_damage);
temp.damage = target.attack*1.5;
}

}

if sorteio = 'Defende'{
target.sprite_index = target.sprite_attack;
target.image_index = irandom(2);

obj_hero.sprite_index = sprite_defend;


if (target.attack - obj_hero.defense) > 0{
obj_hero.hp -= (target.attack - obj_hero.defense);
var temp = instance_create(obj_hero.x,obj_hero.y,obj_damage);
temp.damage = (target.attack - obj_hero.defense);
} else{
var temp = instance_create(obj_hero.x,obj_hero.y,obj_damage);
temp.damage = 'BLOCK';
}

}

if sorteio = 'Inimigo Defende'{
obj_hero.sprite_index = obj_hero.sprite_attack;
obj_hero.image_index = irandom(2);

target.sprite_index = target.sprite_defend;


if (obj_hero.attack - target.defense) > 0{
target.hp -= (obj_hero.attack - target.defense);
var temp = instance_create(target.x,target.y,obj_damage);
temp.damage = (obj_hero.attack - target.defense);
} else {
var temp = instance_create(target.x,target.y,obj_damage);
temp.damage = 'BLOCK';
}


}

alarm[1] = 9999999999999999999999;

}

}




