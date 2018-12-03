/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
event_inherited();

var tempo = 0;


for(var i=0; i < array_length_1d(oPlayer.skills); i++){
	if(oPlayer.skills[i] == 1)  tempo++;
}
	
if(tempo <= 4) target = last_time_boss;
else target = bossroom;


target_x = 60;
target_y = 600;