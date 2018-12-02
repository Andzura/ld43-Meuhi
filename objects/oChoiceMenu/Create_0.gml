/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

enabledskills = ds_list_create();
ds_list_clear(enabledskills);

skills = oPlayer.skills;

if(skills[SKILLS.LEFT] && skills[SKILLS.RIGHT] && skills[SKILLS.JUMP]) {
	ds_list_add(enabledskills, SKILLS.LEFT);
	ds_list_add(enabledskills, SKILLS.RIGHT);
	if(!skills[SKILLS.DOUBLEJUMP]) ds_list_add(enabledskills, SKILLS.JUMP);
}
if(skills[SKILLS.DOUBLEJUMP]) ds_list_add(enabledskills, SKILLS.DOUBLEJUMP);
if(skills[SKILLS.SWORD]) ds_list_add(enabledskills, SKILLS.SWORD);
if(skills[SKILLS.FIREBALL]) ds_list_add(enabledskills, SKILLS.FIREBALL);
if(skills[SKILLS.BONUSLIFE]) ds_list_add(enabledskills, SKILLS.BONUSLIFE);
if(skills[SKILLS.VISION]) ds_list_add(enabledskills, SKILLS.VISION);

randomize();
ds_list_shuffle(enabledskills);
	
texts[SKILLS.LEFT] = "LEFT INNER EAR";
texts[SKILLS.RIGHT] = "RIGHT INNER EAR";
texts[SKILLS.JUMP] = "ABILITY TO JUMP";
texts[SKILLS.DOUBLEJUMP] = "ABILITY TO DOUBLE JUMP";
texts[SKILLS.SWORD] = "SWORD ARM";
texts[SKILLS.FIREBALL] = "FIREBALL ARM";
texts[SKILLS.BONUSLIFE] = "RESISTANCE";
texts[SKILLS.VISION] = "GOOD EYESIGHT";
texts[SKILLS.CLIMB] = "ABILITY TO CLIMB";

choicessize = ds_list_size(enabledskills) >= 4 ? 4 : ds_list_size(enabledskills);

menu_cursor = 1;
menu_committed =-1;