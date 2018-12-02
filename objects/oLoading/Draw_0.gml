/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
show_debug_message(tilemap);
draw_tilemap(tilemap, 0, 0);

for(var i = 0; i < heightstoget; i++){
	var check = 0;
	while(check <= TILE_SIZE){
		global.heights[i] = check;
		if(surface_getpixel(application_surface,i, check) != c_black) break;
		check++;
	}
}
show_debug_message(global.heights)

room_goto_next();