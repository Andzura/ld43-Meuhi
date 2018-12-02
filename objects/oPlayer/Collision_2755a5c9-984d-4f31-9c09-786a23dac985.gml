/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
gothroughdoor = keyboard_check(vk_up);
if(gothroughdoor) {
	transitionRoom(other.target, other.target_x, other.target_y);
}