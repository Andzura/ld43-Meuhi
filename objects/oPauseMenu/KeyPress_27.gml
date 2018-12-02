/// @description pause

if(!ispaused) {
	vision = oPlayer.skills[SKILLS.VISION];
	instance_deactivate_all(true);
    ispaused = true;
}
