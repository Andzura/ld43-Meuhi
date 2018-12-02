/// @description blink
if(isComing){
	if(image_alpha < 1)	image_alpha +=0.025;
	else isComing = false
}
else{
	if(image_alpha > 0.2)	image_alpha -=0.025;
	else isComing = true	
}