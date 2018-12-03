/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

game_set_speed(60, gamespeed_fps);

with(oPauseMenu){
	ispaused = true;
	havefocus = true;
	canContinue = false;
	vision = false;
	instance_deactivate_all(true);
}
