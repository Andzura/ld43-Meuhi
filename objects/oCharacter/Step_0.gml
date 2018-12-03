/// @description skills rotation

// -------------------------------- Move left/right --------------------------------------------------
var move = 0;
if(skills[SKILLS.LEFT]) move = -moveleft;
if(skills[SKILLS.RIGHT]) move += moveright;


// -------------------- HPS ------------------------------


fr *= 0.9 
if(abs(fr) <  1) fr = 0;
hsp = move * walksp + fr;

if(hsp !=0){
	image_xscale = sign(hsp);
	direction = point_direction(x, y, x +hsp, y);
	lastdirection = sign(hsp);
}

// -------------------- Ice Wall ------------------------------

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
	airborne = true;
} 
else if(place_meeting(x, y, oLadder)){
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
	vsp -= knockbackheight;
	knockback = 0;
	airborne = true;
}

vsp = sign(vsp) * min(abs(vsp), 20);
// -------------------------------- FIRE --------------------------------------------------

if( firingdelay > 0 )
	firingdelay--;

if(skills[SKILLS.FIREBALL] && attackfire && firingdelay <= 0  && !(climb || fall))
{
	firingdelay = maxfiringdelay;
	with (instance_create_layer(firesourcex , firesourcey, "FireBalls", oFireBall)){
		speed = 10;
		direction = other.direction;
	}
}

// -------------------------------- SWORD --------------------------------------------------

if( hittime > 0){
	hittime --;
}
if(!(climb || fall))
{
	if(instance_exists(attachedsword) && hittime <=0)
	{
		if(attacksword) {
				hittime = hittimemax;
				attachedsword.image_index = 1;
		} 
		else attachedsword.image_index = 0;
	}

	if(hsp != 0 && instance_exists(attachedsword)) 
	{
		attachedsword.image_xscale = image_xscale;
		attachedsword.direction = direction;
	}
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
if(tilemap_get_at_pixel(tilemap, x, bbox_bottom) > 1){
	b = 0;
	m = false;
}
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

// -------------------------------- ANIMATION --------------------------------------------------

image_speed = 1;
if (skills[SKILLS.CLIMB] && place_meeting(x, y, oLadder)){
	
	sprite_index = spriteClimbing;	
	isClimbing = true;
	
	if(climb || fall){
		image_speed = 4;
	}
	else
		image_speed = 0;

}
else {	
	isClimbing = false;
	
	if (false){ // Adrien : il faut faire if (je suis pas sur terre)
		sprite_index = spriteJumping;
		image_speed = 0;
		if(sign(vsp) > 0) image_index = 1;
		else image_index = 0;
	}
	else {
		if(hsp == 0) sprite_index = spriteWaiting;
		else sprite_index = spriteMoving;
	}

}
