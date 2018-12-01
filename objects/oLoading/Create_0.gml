/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
#macro TILE_SIZE 64

heights = sprite_get_width(sTilesetCollision);
tiles = sprite_get_width(heights) /TILE_SIZE;

var layerid = layer_create(0,"Tiles");
tilemapid = layer_tilemap_create(layerid,0,0,tsCollision, tiles, 1);

for(var i = 0; i < tiles; i++){
	tilemap_set(tilemapid, i, i,0);
}