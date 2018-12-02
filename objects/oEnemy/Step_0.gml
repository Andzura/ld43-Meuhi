/// @description felft/right movements
var bbox_side
if(hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if(tilemap_get_at_pixel(tilemap, bbox_side+hsp, y) == 1 || !(tilemap_get_at_pixel(tilemap, x+hsp, bbox_bottom+1) >= 1)) {
	if (moveleft) 
	{
		moveleft = 0;
		moveright = 1;
	}
	else
	{
		moveleft = 1;
		moveright = 0;
	}
}
event_inherited();