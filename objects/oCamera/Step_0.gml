/// @description 
if(instance_exists(oPlayer) && (oPlayer.visible)){
	x = oPlayer.x;
	y = oPlayer.y;
	if(!visible){
			if(!oPlayer.skills[SKILLS.VISION])
			visible = true;
	}
	else if (oPlayer.skills[SKILLS.VISION])
		visible = false;
} else {
	if(visible)
		visible = false;
}
