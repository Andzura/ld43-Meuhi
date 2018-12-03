/// @description skills

skills[SKILLS.LEFT] = false;
skills[SKILLS.RIGHT] = false;
skills[SKILLS.JUMP] = false;
skills[SKILLS.DOUBLEJUMP] = false;
skills[SKILLS.SWORD] = false;
skills[SKILLS.FIREBALL] = false;
skills[SKILLS.BONUSLIFE] = false;
skills[SKILLS.VISION] = false;
skills[SKILLS.CLIMB] = false;

walksp = 10;

moving = true;
dying = false;

attachedarm = false;

// Inherit the parent event
event_inherited();

spriteMoving = sPlayerWalk;
spriteClimbing = sPlayerClimb;
spriteJumping = sPlayerJump;

bubble1 = true;