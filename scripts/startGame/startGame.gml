
oPlayer.x = 93;
oPlayer.y = 660;

oPlayer.hp = 1 + 2*oPlayer.skills[SKILLS.BONUSLIFE];
oPlayer.dying = false;
oPlayer.bubble1 = true;
oPlayer.moving = true;
if( room == room_00)
	room_restart();
else
	room_goto(room_00);
