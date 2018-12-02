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
		case 2 : default : room_goto(room_00); break;
		case 1 : room_goto(room_00); break;
		case 0 : game_end();break;
	}
}