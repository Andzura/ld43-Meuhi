/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
#macro TILE_SIZE 64

heights = sprite_get_width(sTilesetColl);
tiles = sprite_get_width(heights) /TILE_SIZE;

tilemap = layer_tilemap_create("Tiles",0,0,tsColl, tiles, 1);

for(var i = 0; i <= tiles; i++){
	tilemap_set(tilemap, i, i,0);
}