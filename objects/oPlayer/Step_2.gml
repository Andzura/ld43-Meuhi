/// @description  menu restart

// Inherit the parent event
if(hp <= 0 and !dying){
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

