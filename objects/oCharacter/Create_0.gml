/// @description variables and life bonus

hp = 1;

vsp = 0;
hsp = 0;

walksp = 5;
jumpheight = 15;
grv = 1;

movright = false;
movelfet = false;
jump = false;
airjumpdone = false;
climb = false;
attacksword = false;
fall = false;


attackfire = false;
maxfiringdelay = 15
firingdelay = maxfiringdelay;
lastdirection = 1;

tilemap  = layer_tilemap_get_id("Collisions");

if(skills[SKILLS.BONUSLIFE]){
	hp *=3;
}
if(skills[SKILLS.SWORD]) {
	attachedsword = instance_create_layer(x , y ,"sword", oSword);
	attachedsword.attachedcharacter = id;
}