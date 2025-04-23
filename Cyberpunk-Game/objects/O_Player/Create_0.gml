state = PLAYERSTATE.FREE;

if (global.HasPreviousStats = true)
{
	playerhp = global.HPPersist;
	alarm[1] = room_speed;
}
if (global.HasPreviousStats = false) playerhp = 3;

global.PlayerSwinging = false;
global.playerhpglob = playerhp;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACKSLASH,
	RELOAD,
	HURT
}

grv = 0.3;
hsp = 0;
vsp = 0;
hspWalk = 1.75;
vspJump = -6;
canJump = 0;

canbehit = 1;
hitfrom = 0;
canreload = 0;
reloadrate = 30;

flash = 0;
idledir = 1;

hascontrol = true;