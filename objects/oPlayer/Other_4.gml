/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
event_inherited();

if(skills[SKILLS.FIREBALL]) {
	attachedarm = instance_create_layer(x , y ,"FireArm", oFireArm);
	attachedarm.attachedcharacter = id;
	attachedarm.direction = direction;
	attachedarm.image_xscale = image_xscale;
}