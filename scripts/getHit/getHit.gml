// @description when player get hit, decremente life and knoback
// @arg character
// @arg xattack
// @arg yattack

var  character = argument0;
var xattack = argument1;
var yattack = argument2;

if(character.vulnerabilitydelay <= 0){
	character.hp --;
	character.vulnerabilitydelay = character.maxvulnerabilitydelay;

	character.knockback = sign(character.x - xattack);
}

