/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
#macro TILE_SIZE 64

heights = sprite_get_width(sTilesetColl);
tiles = sprite_get_width(heights) /TILE_SIZE;

var layerid = layer_create(0,"Tiles");
show_debug_message(layerid);
tilemap = layer_tilemap_create(layerid,0,0,tsColl, tiles, 1);
show_debug_message(tilemap);
for(var i = 0; i <= tiles; i++){
	tilemap_set(tilemap, i, i,0);
}