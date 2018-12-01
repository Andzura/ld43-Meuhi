/// @description skills rotation

// Health Test
if(hp <= 0 )
	instance_destroy();

// -------------------------------- Move left/right --------------------------------------------------
var move =0;
if(skills[SKILLS.LEFT]) move = -moveleft;
if(skills[SKILLS.RIGHT]) move += moveright;

hsp = move * walksp;
vsp += grv;
if(hsp != 0) 
{
	image_xscale = sign(hsp);
	direction = point_direction(x, y, x +hsp, y);
	lastdirection = move;
}

// -------------------------------- CLIMB --------------------------------------------------

if (skills[SKILLS.CLIMB] && place_meeting(x, y, oLadder) && climb) {
	vsp = -5;
} 
else if(place_meeting(x, y+1, oLadder)){
	if(fall) vsp = 5;
	else  vsp = 0;
}
// -------------------------------- JUMP --------------------------------------------------
if(tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom+1) != 0 ||  
	tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom+1) != 0)
{
	if(skills[SKILLS.JUMP] && jump)
		vsp += jump * -jumpheight;
	if(airjumpdone) airjumpdone = false;
}
else if(skills[SKILLS.DOUBLEJUMP] && !airjumpdone && jump) {
		jump = 1 - 2*(vsp/-jumpheight)/3; // scale second jump
		vsp += jump * -jumpheight;
		airjumpdone = true;
}
	
// -------------------------------- FIRE --------------------------------------------------

if( firingdelay > 0)
	firingdelay--;

if(skills[SKILLS.FIREBALL] && attackfire && firingdelay <= 0)
{
	firingdelay = maxfiringdelay;
	with (instance_create_layer(x + lastdirection* (sprite_get_width(sPlayer)/2+sprite_get_width(sFireBall)/2), y, "fireballs", oFireBall)){
		speed = 25;
		direction = other.direction;
	}
}

// -------------------------------- OTHER --------------------------------------------------
if(skills[SKILLS.SWORD])
{
	
}



if(skills[SKILLS.VISION])
{
	
}

// -------------------------------- UPDATE --------------------------------------------------
// Horizontal Collision
var bbox_side;
if(lastdirection >  0 ) bbox_side = bbox_right; else bbox_side = bbox_left;
var b = tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_bottom);
var t = tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_top);
if (b != 0 || t != 0){
	if(b == 1 || t == 1){
		if(hsp > 0) x =  x - (x mod TILE_SIZE) + TILE_SIZE - 1 - (bbox_right - x); 
		else x =  x - (x mod TILE_SIZE) - (bbox_left - x); 
		hsp = 0;
	}
}
x += hsp;

// Vertical Collision
if(tilemap_get_at_pixel(tilemap, x, bbox_bottom+vsp) <= 1){
	if(vsp >  0 ) bbox_side = bbox_bottom; else bbox_side = bbox_top;
	var l = tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+vsp)
	var r = tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vsp)
	if (l !=  0 || r != 0){
		if(vsp > 0) y =  y - (y%TILE_SIZE)+TILE_SIZE - 1  - (bbox_bottom  - y);
		else y = y - (y%TILE_SIZE) - (bbox_top - y);
		vsp = 0;
	}
}
var floordist = getFloor(tilemap, x, bbox_bottom+vsp);
if(floordist >= 0){
	y += vsp;
	y -= floordist + 1;
	vsp = 0;
	floordist = -1;
}
y += vsp;