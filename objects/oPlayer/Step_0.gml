/// @description movement player
if(moving) {
	
	moveleft = keyboard_check(vk_left);
	moveright = keyboard_check(vk_right) ;
	jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);
	climb = keyboard_check(vk_up) || keyboard_check(vk_space);
	fall = keyboard_check(vk_down)


	attackfire = keyboard_check_pressed(ord("V"))
	attacksword = keyboard_check_pressed(ord("C"))
} else {
	moveleft = false;
	moveright = false;
	jump = false;
	climb = false;
	fall = false;


	attackfire = false;
	attacksword = false;
}


if(vulnerabilitydelay > 0)
	vulnerabilitydelay--;

event_inherited();

if( !(climb || fall)){
	
	if(instance_exists(attachedarm) ){
		if(firingdelay > 0) attachedarm.image_index = 1;
		else attachedarm.image_index = 0;
	}

	if(hsp != 0 && instance_exists(attachedarm)) 
	{
		attachedarm.image_xscale = image_xscale;
		attachedarm.direction = direction;
	}
}