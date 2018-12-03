/// @description fire source

if(skills[SKILLS.FIREBALL] && instance_exists(attachedarm)){
	if(lastdirection >  0 ) firesourcex = attachedarm.bbox_right; else firesourcex = attachedarm.bbox_left;
	firesourcey = (attachedarm.bbox_bottom+attachedarm.bbox_top)/2;
}
