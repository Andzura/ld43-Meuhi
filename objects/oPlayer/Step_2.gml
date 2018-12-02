/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
// Inherit the parent event
if(hp <= 0){
	hp = 1 + 2*skills[SKILLS.BONUSLIFE];
	with(oPauseMenu){
		ispaused = true;
		havefocus = true;
		canContinue = false;
		vision = false;
		instance_deactivate_all(true);
	}
}

