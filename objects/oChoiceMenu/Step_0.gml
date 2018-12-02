
// keyboard Controls
if(keyboard_check_pressed(vk_up))
{
	menu_cursor ++;
	if(menu_cursor >= choicessize) 
		menu_cursor = 0;
}
	
if(keyboard_check_pressed(vk_down))
{
	menu_cursor --;
	if(menu_cursor < 0) 
		menu_cursor = choicessize-1;
}
	
if(keyboard_check_pressed(vk_space))
{
	menu_committed = menu_cursor;
}

// do choice
if (menu_committed != -1)
{
	oPlayer.skills[ds_list_find_value(enabledskills, menu_committed)] = false;
	transitionRoom(room_00, 300, 100);
}

menu_committed = -1;