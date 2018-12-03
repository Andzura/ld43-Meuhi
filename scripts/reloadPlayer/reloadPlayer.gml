if(file_exists(SAVE_FILE)) {
	var file = file_text_open_read(SAVE_FILE);
	for (i = 0; i < array_length_1d(oPlayer.skills) ; i++) {
		oPlayer.skills[i] = file_text_read_real(file);
		file_text_readln(file);
	}
	file_text_close(file);
} else {
	with (oPlayer) {
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
}

oPlayer.visible = true;
startGame();