/// @description Dialogue de Meuhi

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

step = 0;

maxtexttime = 1;
texttime = 0;

infotext[0] = "HELLO ADVENTURER, IT SEEMS YOU PASSED AWAY...";
infotext[1] = "I CAN RESURECT YOU IF YOU WANT. IT'S HOWERVER ";
infotext[2] = "NOT FREE. YOU HAVE TO GIVE ME";
infotext[3] = "ONE OF YOUR BODY PART...";
infotext[4] = "IF YOU WANT TO LIVE AGAIN.";
infotext[5] = "> CONTINUE";

outtext[0] = ""
outtext[1] = "GOOD CHOICE. YOU MAY HAVE FORGET ALL OF THIS"
outtext[2] = "ONCE YOU'LL BE RESURECTED..."
outtext[3] = "> CONTINUE";

currenttext = 0;

displaytext[0] = "";
displaytext[1] = "";
displaytext[2] = "";
displaytext[3] = "";
displaytext[4] = "";
displaytext[5] = "";

displayouttext[0] = "";
displayouttext[1] = "";
displayouttext[2] = "";
displayouttext[3] = "";

wait = true;