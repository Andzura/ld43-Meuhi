/// @description fight
if(vsp > 0){
	getHit(other, x, y);
}
else if(vulnerabilitydelay <= 0){
	getHit(id,other.x, other.y);
	other.changeMove = true;
}
