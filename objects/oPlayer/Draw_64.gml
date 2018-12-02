/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
xheart = 30;
yheart = 30;
for(i = 0; i < hp; i++) {
	draw_sprite(sFullHeart,0,xheart, yheart);
	xheart += 30;
}

for(i = 0; i < 3-hp; i++) {
	draw_sprite(sEmptyHeart,0,xheart, yheart);
	xheart += 30;
}