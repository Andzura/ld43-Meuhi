/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_tilemap(tilemapid, 0, 0);

for(var i = 0; i < heights; i++){
	var check = 0;
	while(check <= TILE_SIZE){
		global.heights[i] = check;
		if(surface_getpixel(application_surface,i, check) != c_black) break;
		check++;
	}
}


room_goto_next();