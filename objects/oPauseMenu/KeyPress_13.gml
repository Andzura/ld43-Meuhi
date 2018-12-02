/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(ispaused) instance_activate_all();
else {
	vision = oPlayer.skills[SKILLS.VISION];
	instance_deactivate_all(true);
}
ispaused = !ispaused;