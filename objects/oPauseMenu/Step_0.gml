
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
		instance_activate_all();
		
		if(canContinue){
			switch (menu_committed)
			{
				case 2 : default : reloadPlayer(); break;
				case 1 :  
					ispaused = false; 
					break;
				case 0 : room_goto(Menu); break;
			}
		}
		else {
			if(menu_committed == 1) reloadPlayer();
			else room_goto(Menu);				
		}		
	}

	menu_committed = -1;
}