/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//draw rectangle

if (display) {
	draw_set_color(c_ltgray);
	draw_rectangle(25,55,505,255,false);
	draw_set_color(c_black);
	draw_rectangle(30,60,500, 250, false);

	//draw choices
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	draw_set_font(fChoice);
	draw_set_color(c_white);

	oneByOneLetterDisplay(infotexts);
}