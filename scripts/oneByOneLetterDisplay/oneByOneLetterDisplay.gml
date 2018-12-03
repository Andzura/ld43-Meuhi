// @description move player and change room
// @arg texts

var texts = argument0;


menu_itemheight =  font_get_size(fChoice);
currenttext = 0;
 
for(i = 0; i < array_length_1d(texts); i++) {
	if(other.displaytexts[i] == texts[i])
		currenttext++;
	else
		break;
}

for(i = 0; i < currenttext; i++) {
	if( i == 0) {
		draw_set_color(c_red);
		draw_text(40, 75 + 2*i*menu_itemheight, texts[i]);
		draw_set_color(c_white);
	}
	else if (i == array_length_1d(texts) - 1)
		draw_text(200, 200 + 3*menu_itemheight, texts[i]);
	else
		draw_text(40, 75 + 2*i*menu_itemheight, texts[i]);
}

if (currenttext < array_length_1d(texts)) {
	if(currenttext == 0) 
		draw_set_color(c_red);
	if(other.displaytexts[currenttext] != texts[currenttext]) {
		other.displaytexts[currenttext] += string_char_at(texts[currenttext], string_length(other.displaytexts[currenttext]) + 1);
		if (currenttext == array_length_1d(texts) - 1)
			draw_text(200, 200 + 3*menu_itemheight, other.displaytexts[currenttext]);
		else
			draw_text(40, 75 + 2*currenttext*menu_itemheight, other.displaytexts[currenttext]);
	} else if (other.displaytexts[currenttext] == texts[currenttext]) {
			currenttext ++;
	}
	draw_set_color(c_white);
}
