/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
vsp = 0;
hsp = 0;
fr = 0;
flash = 0;
knockback = false;

airjumpdone = false;


if(skills[SKILLS.SWORD]) {
	attachedsword = instance_create_layer(x , y ,"Sword", oSword);
	attachedsword.attachedcharacter = id;
	attachedsword.direction = direction;
	attachedsword.image_xscale = image_xscale;
}



tilemap  = layer_tilemap_get_id("Collisions");
show_debug_message(tilemap);