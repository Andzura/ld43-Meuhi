/// @description felft/right movements
if(place_meeting(x + (moveright-moveleft), y, oWall) || !place_meeting(x+hsp, y+1, oWall)) {
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