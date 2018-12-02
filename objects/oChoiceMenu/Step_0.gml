
// keyboard Controls
if(step == 2) {
	if(keyboard_check_pressed(vk_space)) {
		step = 0;
		menu_committed = -1;
		transitionRoom(room_00, 300, 100);
	}
}

if(step == 1) {
	
	if(keyboard_check_pressed(vk_up)) {
		menu_cursor ++;
		if(menu_cursor >= choicessize) 
			menu_cursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down)) {
		menu_cursor --;
		if(menu_cursor < 0) 
			menu_cursor = choicessize-1;
	}
	
	if(keyboard_check_pressed(vk_space)) {
		menu_committed = menu_cursor;
	}

	// do choice
	if (menu_committed != -1) {
		oPlayer.skills[ds_list_find_value(enabledskills, menu_committed)] = false;
		if (ds_list_find_value(enabledskills, menu_committed) == SKILLS.BONUSLIFE) oPlayer.hp = 1;
		if(!oPlayer.skills[SKILLS.SWORD] && !oPlayer.skills[SKILLS.FIREBALL]) oPlayer.skills[SKILLS.CLIMB] = false;
		if(!oPlayer.skills[SKILLS.SWORD]) oPlayer.attachedsword = false;
		currenttext = 0;
		outtext[0] = "SO YOU CHOSE TO GIVE ME YOUR " + texts[ds_list_find_value(enabledskills, menu_committed)] + " ";
		step = 2;
	}
}

if (step == 0) {
	if(keyboard_check_pressed(vk_space)) {
		step = 1;
	}
}
