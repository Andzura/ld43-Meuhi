
oPlayer.x = 130;
oPlayer.y = 600;

oPlayer.hp = 1 + 2*oPlayer.skills[SKILLS.BONUSLIFE];

if( room == room_00)
	room_restart();
else
	room_goto(room_00);
