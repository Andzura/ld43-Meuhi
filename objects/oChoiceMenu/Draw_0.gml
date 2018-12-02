/// @description draw pause menu
// Vous pouvez écrire votre code dans cet éditeur
menu_itemheight =  font_get_size(fChoice);

menu_x = 200;
menu_y = 200;


//draw rectangle
draw_set_color(c_black);
draw_rectangle(30,60,500, 250, false);
	
//draw choices
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
	
draw_set_font(fChoice);
	
choicessize = ds_list_size(enabledskills) >= 4 ? 4 : ds_list_size(enabledskills);
	
for(var i = 0; i < choicessize; i++) {
	var txt = texts[ds_list_find_value(enabledskills, i)];
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
	
	
	
	
	
	

