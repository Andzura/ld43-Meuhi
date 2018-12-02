/// @description draw pause menu
// Vous pouvez écrire votre code dans cet éditeur

if (ispaused) {
	draw_set_color(c_black);
	draw_rectangle(250,250,room_width - 250, room_height - 250, false);

	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fPause);
	draw_text(room_width/2, room_height/2, "Press enter to continue");
}