/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
gothroughdoor = keyboard_check(vk_up);
if(gothroughdoor) {
	room_goto(other.target);
}