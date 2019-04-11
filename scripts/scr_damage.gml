// sprites order
// 0 - Idle
// 1 - Fight pose
// 2 - Defend
// 3 - Hurt
// 4 - ATK 1
// 5 - ATK 2
// 6 - ATK 3
// 7 - DEAD

if obj_hero.alarm[1] = -1{
if instance_exists(target){


var sorteio = choose('Ataca','Defende','Toma Dano','Inimigo Defende');


//causa dano
if sorteio = 'Ataca'{
obj_hero.image_index = irandom_range(4,6);

target.image_index = 3;

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


//toma dano
if sorteio = 'Toma Dano'{

target.image_index = irandom_range(4,6);

obj_hero.image_index = 3;

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

//Defende
if sorteio = 'Defende'{
target.image_index = irandom_range(4,6);


obj_hero.image_index = 2;


if (target.attack - obj_hero.defense) > 0{
obj_hero.hp -= (target.attack - obj_hero.defense);
var temp = instance_create(obj_hero.x,obj_hero.y,obj_damage);
temp.damage = (target.attack - obj_hero.defense);
} else{
var temp = instance_create(obj_hero.x,obj_hero.y,obj_damage);
temp.damage = 'BLOCK';
}

}

//inimigo defende
if sorteio = 'Inimigo Defende'{
obj_hero.image_index = irandom_range(4,6);

target.image_index = 2;


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




