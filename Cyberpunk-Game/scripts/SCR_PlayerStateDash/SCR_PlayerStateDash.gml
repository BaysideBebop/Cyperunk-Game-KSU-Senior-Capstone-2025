// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_PlayerStateDash(){
	dashduration = dashduration - room_speed;
	fade_timer--;
	if (sign(O_Player.hsp > 0))
	{
		sprite_index = SPR_PlayerDashRight;
		mask_index = SPR_PlayerDashRight;
	}
	if (sign(O_Player.hsp < 0))
	{
		sprite_index = SPR_PlayerDashLeft;
		mask_index = SPR_PlayerDashLeft;
	}
	if (place_meeting(x + hsp*2, y, O_Wall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0;
		if (!place_meeting(x + hsp, y, O_Wall)) x += hsp;
	}
	hsp = 0;
	state = PLAYERSTATE.FREE;
	canbehit = 1;
	hascontrol = true;
	mask_index = SPR_PlayerWalkRightLookRight;
	sprite_index = SPR_PlayerWalkRightLookRight;
	candash = true;
}
x += hsp;

if (place_meeting(x, y + vsp, O_Wall))
{
	if (vsp > 0) canJump = 4;
	while (abs(vsp) > 0.3)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, O_Wall)) x += vsp;
	}
	vsp = 0;
}
y += vsp;

	
	if (candash = true) && (global.PlayerSwinging = false)
	{
		candash = false;
		hascontrol = 0;
		canbehit = 0;
		hsp = hsp*1.25;
		alarm[2] = room_speed;
	}
	if (fade_timer <= 0)
	{
		fade_timer = fade_time;
		part_particles_create(O_ParticleSetup.particleSystem,x,y,O_ParticleSetup.particleType_Player_Fade,1)
	}



}