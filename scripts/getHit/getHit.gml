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
	
	var directionattack = point_direction(xattack, yattack, character.x , character.y);
	character.knockback = -sign(xattack - character.x);
	
	character.flash = 30;
}

