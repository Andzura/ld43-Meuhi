/// @description  menu restart

// Inherit the parent event
if(hp <= 0)
 if(room = bossroom){
	transitionRoom(deathroom, 60, 600);
 }
 else if(room = deathroom){
	hp++;
 }
 else if(!dying){
	skills[SKILLS.LEFT] = false;
	skills[SKILLS.RIGHT] = false;
	skills[SKILLS.JUMP] = false;
	skills[SKILLS.DOUBLEJUMP] = false;
	skills[SKILLS.SWORD] = false;
	skills[SKILLS.FIREBALL] = false;
	skills[SKILLS.BONUSLIFE] = false;
	skills[SKILLS.VISION] = true;
	skills[SKILLS.CLIMB] = false;

	game_set_speed(20, gamespeed_fps);
	alarm[10] = 60;
	dying= true;
}
