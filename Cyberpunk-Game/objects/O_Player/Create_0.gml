image_index = 0;
image_speed = 0;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACKSLASH
}

grv = 0.3;
hsp = 0;
vsp = 0;
hspWalk = 3.5;
vspJump = -6;
canJump = 0;

playerhp = 3;
global.playerhpglob = playerhp;
canbehit = 1;
hitfrom = 0;

flash = 0;