x = attachedcharacter.x + attachedcharacter.sprite_width/2;
y = attachedcharacter.y;

if (attachedcharacter.attacksword && hittime <= 0)  {
	hittime = hittimemax;
	image_angle = attachedcharacter.lastdirection*-90;
}

if(hittime > 0){
	hittime --;
	image_angle = attachedcharacter.lastdirection*-90;
}
if(hittime == 0 && image_angle != 0) image_angle = 0;
