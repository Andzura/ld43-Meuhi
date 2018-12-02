/// @description draw pause menu
// Vous pouvez écrire votre code dans cet éditeur

if (ispaused) {
	
	//draw rectangle
	draw_set_color(c_black);
	if (vision) draw_rectangle(250,250,room_width - 250, room_height - 250, false);
	else draw_rectangle(0,0 ,room_width, room_height, false);
	
	
	//draw choices
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_font(fPause);
	
	for(var i = 0; i < menu_items; i++)
	{
		var txt = menu[i];
		if(menu_cursor ==i)
		{
			txt = string_insert("> ", txt, 0);
			var col = c_white;
		}
		else
		{
			var col = c_gray;
		}
		var xx = menu_x;
		var yy = menu_y - (menu_itemheight * (i * 3));

		draw_set_color(col);
		draw_text(xx,yy,txt);
	
	}
	
	// do choice
	if (menu_committed != -1)
	{
		switch (menu_committed)
		{
			case 2 : room_goto(room0); break;
			case 1 : default : ispaused = false; break;
			case 0 : room_goto(Menu); break;
		}
	}
	
	
	
	
	


}