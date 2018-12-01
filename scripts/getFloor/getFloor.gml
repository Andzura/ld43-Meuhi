// @description return distance to the floor height of  a given x, y position. distance is signed.
// @arg tilemap
// @arg x
// @arg y

var tpos = tilemap_get_at_pixel(argument0, argument1, argument2);
if(tpos > 0){
	if(tpos == 1) return argument2%TILE_SIZE;
	var floorheight = global.heights[(tpos*TILE_SIZE)+(argument1%TILE_SIZE)];
	return (argument2%TILE_SIZE) - floorheight;
}
return -(TILE_SIZE - (argument2%TILE_SIZE));