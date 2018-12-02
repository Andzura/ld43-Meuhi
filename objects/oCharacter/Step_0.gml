/// @description skills rotation

// -------------------------------- Move left/right --------------------------------------------------
var move = 0;
if(skills[SKILLS.LEFT]) move = -moveleft;
if(skills[SKILLS.RIGHT]) move += moveright;


// -------------------- Ice Wall ------------------------------


fr *= 0.9 
if(fr <  1) fr = 0;
hsp = move * walksp + fr;

if(hsp != 0) 
{
	image_xscale = sign(hsp);
	direction = point_direction(x, y, x +hsp, y);
	if(attachedsword)
	{
		attachedsword.image_xscale = image_xscale;
		attachedsword.direction = direction
	}
	lastdirection = sign(hsp);
}

if(place_meeting(x+hsp, y, oIceWall)){
	while(!place_meeting(x+sign(hsp), y, oIceWall)){
		x += sign(hsp);
	}
	hsp = 0;
}

var airborne = (getFloor(tilemap, x, bbox_bottom+1) < 0);

// -------------------------------- CLIMB --------------------------------------------------
vsp += grv;

if (skills[SKILLS.CLIMB] && place_meeting(x, y, oLadder) && climb) {
	vsp = -5;
} 
else if(place_meeting(x, y+1, oLadder)){
	if(fall) vsp = 5;
	else  vsp = 0;
}
// -------------------------------- JUMP --------------------------------------------------

if(!airborne || (getFloor(tilemap, bbox_left, bbox_bottom+1) >= 0) 
		|| (getFloor(tilemap, bbox_right, bbox_bottom+1) >=  0))
{
	if(skills[SKILLS.JUMP] && jump){
		vsp += jump * -jumpheight;
		airborne = true;
	}
	if(airjumpdone) airjumpdone = false;
}
else if(skills[SKILLS.DOUBLEJUMP] && !airjumpdone && jump) {
		jump = 1 - 3/4*(vsp/-jumpheight); // scale second jump
		vsp += jump * -jumpheight;
		airjumpdone = true;
}

if(knockback != 0)
{
	fr = knockback * knockbacklength;
	vsp -= jumpheight;
	knockback = 0;
	airborne = true;
}
// -------------------------------- FIRE --------------------------------------------------

if( firingdelay > 0)
	firingdelay--;

var bbox_side;
if(lastdirection >  0 ) bbox_side = bbox_right; else bbox_side = bbox_left;

if(skills[SKILLS.FIREBALL] && attackfire && firingdelay <= 0)
{
	firingdelay = maxfiringdelay;
	with (instance_create_layer(bbox_side , (bbox_bottom+bbox_top)/2, "fireballs", oFireBall)){
		speed = 25;
		direction = other.direction;
	}
}

// -------------------------------- SWORD --------------------------------------------------
if(skills[SKILLS.SWORD] && instance_exists(attachedsword))
{
	if( hittime > 0){
		hittime --;
	}
	else 
	{
		if(attacksword) {
			hittime = hittimemax;
			attachedsword.image_index = 1;
		} 
		else if(attachedsword.image_index = 1) attachedsword.image_index = 0;
	}
}

// -------------------------------- OTHER --------------------------------------------------

if(skills[SKILLS.VISION])
{
	
}

// -------------------------------- UPDATE --------------------------------------------------
// Horizontal Collision
var bbox_side;
if(lastdirection >  0 ) bbox_side = bbox_right; else bbox_side = bbox_left;
var b = tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_bottom);
var m = false;
for( i = bbox_bottom - TILE_SIZE; i > bbox_top; i -= TILE_SIZE){
	m = m || tilemap_get_at_pixel(tilemap, bbox_side+hsp, i);
}
var t = tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_top);
if(tilemap_get_at_pixel(tilemap, x, bbox_bottom) > 1) b = 0;
if(b == 1 || t == 1 || m){
		if(hsp > 0) x =  x - (x mod TILE_SIZE) + TILE_SIZE - 1 - (bbox_right - x); 
		else x =  x - (x mod TILE_SIZE) - (bbox_left - x); 
		hsp = 0;
}
x += hsp;

// Vertical Collision
if(tilemap_get_at_pixel(tilemap, x, bbox_bottom+vsp) <= 1){
	if(vsp >  0 ) bbox_side = bbox_bottom; else bbox_side = bbox_top;
	var l = tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+vsp)
	var r = tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vsp)
	if (l ==  1 || r == 1){
		y += vsp;
		if(vsp > 0) y =  y - (y%TILE_SIZE)+TILE_SIZE - 1  - (bbox_bottom  - y);
		else y = y - (y%TILE_SIZE) - (bbox_top - y);
		vsp = 0;
	}
}
var floordist = getFloor(tilemap, x, bbox_bottom+vsp);

y += vsp;
if(floordist >= 0){
	y -= floordist + 1;
	vsp = 0;
	floordist = -1;
}

if(!airborne){
	y += abs(floordist) - 1;
	if((bbox_bottom%TILE_SIZE) == TILE_SIZE-1){
		if(tilemap_get_at_pixel(tilemap,x, bbox_bottom+1) > 1){
			y+= abs(getFloor(tilemap, x, bbox_bottom+1));
		}	
	}
}
