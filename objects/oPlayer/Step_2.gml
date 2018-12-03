/// @description  menu restart

// Inherit the parent event
if(hp <= 0){
	if(room = bossroom){
		transitionRoom(deathroom, 60, 600);
	}
	else if(room = deathroom){
		hp++;
	}
	else if(!dying){
		skills[SKILLS.VISION] = true;
		game_set_speed(20, gamespeed_fps);
		alarm[10] = 60;
		dying= true;
	}
}

