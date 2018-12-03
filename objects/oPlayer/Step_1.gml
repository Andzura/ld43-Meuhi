/// @description fire source

if(skills[SKILLS.FIREBALL] && attachedarm){
	if(lastdirection >  0 ) firesourcex = attachedarm.bbox_right; else firesourcex = attachedarm.bbox_left;
	firesourcey = (attachedarm.bbox_bottom+attachedarm.bbox_top)/2;
}
