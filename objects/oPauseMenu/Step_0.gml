
// keyboard Controls
if(havefocus){
	if(keyboard_check_pressed(vk_up))
	{
		menu_cursor ++;
		if(menu_cursor >= menu_items) 
			menu_cursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down))
	{
		menu_cursor --;
		if(menu_cursor < 0) 
			menu_cursor = menu_items-1;
	}
	
	if(keyboard_check_pressed(vk_space))
	{
		menu_committed = menu_cursor;
	}

	// do choice
	if (menu_committed != -1)
	{
		havefocus = false;
		switch (menu_committed)
		{
			case 2 : default : 
					instance_activate_all();
					oPlayer.hp = 1 + 2*oPlayer.skills[SKILLS.BONUSLIFE];
					room_goto(room_00); break;
			case 1 : 
				instance_activate_all(); 
				ispaused = false; 
				break;
			case 0 : room_goto(Menu); break;
		}
	}

	menu_committed = -1;
}