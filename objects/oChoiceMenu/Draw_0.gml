/// @description draw pause menu
// Vous pouvez écrire votre code dans cet éditeur
menu_itemheight =  font_get_size(fChoice);

menu_x = 200;
menu_y = 200;


//draw rectangle

draw_set_color(c_ltgray);
draw_rectangle(25,55,505,255,false);
draw_set_color(c_black);
draw_rectangle(30,60,500, 250, false);

//draw choices
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
	
draw_set_font(fChoice);
draw_set_color(c_white);

// STEP 0
if(step == 0 && wait) {

	for(i = 0; i < currenttext; i++) {
			if (i == array_length_1d(infotext) - 1)
				draw_text(menu_x, menu_y + 3*menu_itemheight, infotext[i]);
			else
				 draw_text(40, 75 + 2*i*menu_itemheight, infotext[i]);
	}
	if (currenttext < array_length_1d(infotext)) {
		if(texttime <= 0 && displaytext[currenttext] != infotext[currenttext]) {
			displaytext[currenttext] += string_char_at(infotext[currenttext], string_length(displaytext[currenttext]) + 1);
			if (currenttext == array_length_1d(infotext) - 1)
				draw_text(menu_x, menu_y + 3*menu_itemheight, displaytext[currenttext]);
			else
				 draw_text(40, 75 + 2*currenttext*menu_itemheight, displaytext[currenttext]);
			texttime = maxtexttime;
		} else if (displaytext[currenttext] == infotext[currenttext]) {
			currenttext ++;
		}
		texttime --;
	}
}

// STEP 1
if(step == 1) {
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
}

// STEP 2
if(step == 2 && wait) {
	for(i = 0; i < currenttext; i++) {
			if (i == array_length_1d(outtext) - 1)
				draw_text(menu_x, menu_y + 3*menu_itemheight, outtext[i]);
			else
				 draw_text(40, 75 + 2*i*menu_itemheight, outtext[i]);
	}
	if (currenttext < array_length_1d(outtext)) {
		if(texttime <= 0 && displayouttext[currenttext] != outtext[currenttext]) {
			displayouttext[currenttext] += string_char_at(outtext[currenttext], string_length(displayouttext[currenttext]) + 1);
			if (currenttext == array_length_1d(outtext) - 1)
				draw_text(menu_x, menu_y + 3*menu_itemheight, displayouttext[currenttext]);
			else
				 draw_text(40, 75 + 2*currenttext*menu_itemheight, displayouttext[currenttext]);
			texttime = maxtexttime;
		} else if (displayouttext[currenttext] == outtext[currenttext]) {
			currenttext ++;
		}
		texttime --;
	}
	
}
	
	
	
	

