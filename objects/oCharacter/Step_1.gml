/// @description fire source

if(skills[SKILLS.FIREBALL]){
	if(lastdirection >  0 ) firesourcex = bbox_right; else firesourcex = bbox_left;
	firesourcey = (bbox_bottom+bbox_top)/2;
}
