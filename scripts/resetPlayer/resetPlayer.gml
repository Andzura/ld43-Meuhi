// @description reset player skills

with (oPlayer) {
	oPlayer.visible = true;
	
	skills[SKILLS.LEFT] = true;
	skills[SKILLS.RIGHT] = true;
	skills[SKILLS.JUMP] = true;
	skills[SKILLS.DOUBLEJUMP] = true;
	skills[SKILLS.SWORD] = true;
	skills[SKILLS.FIREBALL] = true;
	skills[SKILLS.BONUSLIFE] = true;
	skills[SKILLS.VISION] = true;
	skills[SKILLS.CLIMB] = true;
}
startGame();