// visibilité
if(!attachedcharacter.visible and visible)
	visible = false;
	
if(attachedcharacter.visible and !visible)
	visible = true;
	
	
// type d'image et suivis	
if (attachedcharacter.isClimbing){
	sprite_index = sRightArmClimb;
	image_xscale = 1;
	
	x = attachedcharacter.x + 15;
	y = attachedcharacter.y - 37;
	
	if(attachedcharacter.climb || attachedcharacter.fall){
		image_speed = 2;
	}
	else
		image_speed = 0;
}
else{
	if(sprite_index != sSword){
		sprite_index = sSword;
		image_index = 0;
		image_speed = 0;
	}
	x = attachedcharacter.x - 10* attachedcharacter.lastdirection;
	y = attachedcharacter.y - 35;
}