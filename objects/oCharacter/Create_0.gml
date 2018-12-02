/// @description variables and life bonus

hp = 1;

vsp = 0;
hsp = 0;

walksp = 5;
jumpheight = 15;
knockbacklength = 15;
fr = 0;

grv = 1;



movright = false;
movelfet = false;

jump = false;
airjumpdone = false;
knockback = false;

climb = false;
fall = false;


attackfire = false;
maxfiringdelay = 15
firingdelay = maxfiringdelay;
lastdirection = 1;


attacksword = false;
hittimemax = 30;
hittime = 0;


maxvulnerabilitydelay = 30;
vulnerabilitydelay = 0;

tilemap  = layer_tilemap_get_id("Collisions");

if(skills[SKILLS.BONUSLIFE]){
	hp =3;
}

