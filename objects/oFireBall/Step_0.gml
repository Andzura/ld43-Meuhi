/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(tilemap_get_at_pixel(tilemap,bbox_left+sign(180-direction)*speed, y) != 0 ||
	tilemap_get_at_pixel(tilemap,bbox_right+sign(180-direction)*speed, y) != 0)
	instance_destroy();