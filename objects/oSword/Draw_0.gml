/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

draw_self();


if (attachedcharacter.flash > 0) {
	attachedcharacter.flash --;
	shader_set(shFlash);
	draw_self();
	shader_reset();
}
