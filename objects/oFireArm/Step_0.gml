/// @description follow player

// visibilité
if(!attachedcharacter.visible and visible)
	visible = false;
	
if(attachedcharacter.visible and !visible)
	visible = true;

// type d'image et suivis
if (attachedcharacter.isClimbing){
	sprite_index = sLeftArmClimb;
	image_xscale = 1;
	
	x = attachedcharacter.x - 12;
	y = attachedcharacter.y - 37;
	
	if(attachedcharacter.climb || attachedcharacter.fall){
		image_speed = 4;
	}
	else
		image_speed = 0;
}
else{
	sprite_index = sFireArm;
	image_index = 0;
	image_speed = 0;
	
	x = attachedcharacter.x + 8* attachedcharacter.lastdirection;
	y = attachedcharacter.y - 37;
}