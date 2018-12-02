/// @description choice room
// Vous pouvez écrire votre code dans cet éditeur

if (room = room1) {
	enabledskills = ds_list_create();
	ds_list_clear(enabledskills);

	if(skills[SKILLS.LEFT]) ds_list_add(enabledskills, SKILLS.LEFT);
	if(skills[SKILLS.RIGHT]) ds_list_add(enabledskills, SKILLS.RIGHT);
	if(skills[SKILLS.JUMP]) ds_list_add(enabledskills, SKILLS.JUMP);
	if(skills[SKILLS.DOUBLEJUMP]) ds_list_add(enabledskills, SKILLS.DOUBLEJUMP);
	if(skills[SKILLS.SWORD]) ds_list_add(enabledskills, SKILLS.SWORD);
	if(skills[SKILLS.FIREBALL]) ds_list_add(enabledskills, SKILLS.FIREBALL);
	if(skills[SKILLS.BONUSLIFE]) ds_list_add(enabledskills, SKILLS.BONUSLIFE);
	if(skills[SKILLS.VISION]) ds_list_add(enabledskills, SKILLS.VISION);
	if(skills[SKILLS.CLIMB]) ds_list_add(enabledskills, SKILLS.CLIMB);

	randomize();
	ds_list_shuffle(enabledskills);
	draw_set_color(c_red);
	
	if(ds_list_size(enabledskills) > 0) {		
		buttonx = 200;
		buttony = 200;
		button = instance_create_layer(buttonx,buttony,"buttons",oButton);
		button.skill = ds_list_find_value(enabledskills,0);
		button.x = buttonx;
		button.y = buttony;
	}
	
	if(ds_list_size(enabledskills) > 1) {	
		buttonx = 400;
		buttony = 200;
		button = instance_create_layer(buttonx,buttony,"buttons",oButton);
		button.skill = ds_list_find_value(enabledskills,1);
		button.x = buttonx;
		button.y = buttony;
	}

	if(ds_list_size(enabledskills) > 3) {	
		buttonx = 200;
		buttony = 250;
		button = instance_create_layer(buttonx,buttony,"buttons",oButton);
		button.skill = ds_list_find_value(enabledskills,2);
		button.x = buttonx;
		button.y = buttony;
	}

	if(ds_list_size(enabledskills)> 4) {	
		buttonx = 400;
		buttony = 250;
		button = instance_create_layer(buttonx,buttony,"buttons",oButton);
		button.skill = ds_list_find_value(enabledskills,3);
		button.x = buttonx;
		button.y = buttony;
	}



}

event_inherited();

