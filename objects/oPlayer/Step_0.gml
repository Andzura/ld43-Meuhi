/// @description movement player
moveleft = keyboard_check(vk_left);
moveright = keyboard_check(vk_right) ;
jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);
climb = keyboard_check(vk_up) || keyboard_check(vk_space);
fall = keyboard_check(vk_down)


attackfire = keyboard_check(ord("V"))
attacksword = keyboard_check(ord("C"))

if(vulnerabilitydelay > 0)
	vulnerabilitydelay--;
	
event_inherited();


