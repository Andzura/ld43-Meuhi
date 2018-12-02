/// @description Insérez la description ici

// arrivé lente
image_alpha = min(image_alpha+0.02,1);

// keyboard Controls
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
	switch (menu_committed)
	{
		case 3 : {
			if(file_exists(SAVE_FILE)) {
				var file = file_text_open_read(SAVE_FILE);
				for (i = 0; i < array_length_1d(oPlayer.skills) ; i++) {
					oPlayer.skills[i] = file_text_read_real(file);
					file_text_readln(file);
				}
				file_text_close(file);
				if (oPlayer.skills[SKILLS.BONUSLIFE]) oPlayer.hp = 3;
			} else resetPlayer();
			transitionRoom(room0, menu_x, menu_y);
		}
		break;
		case 2 : default : 
			resetPlayer();
			transitionRoom(room_00, menu_x, menu_y); 
			break;
		case 1 : transitionRoom(room0, menu_x, menu_y); break;
		case 0 : game_end();break;
	}
}

