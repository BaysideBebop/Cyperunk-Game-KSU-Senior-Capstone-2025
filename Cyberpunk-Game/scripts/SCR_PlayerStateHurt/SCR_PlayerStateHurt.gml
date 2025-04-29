// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_PlayerStateHurt()
{
	if (canbehit = 1)
	{
		isbeinghurt = true;
		vsp = vsp + grv;
		y += vsp;
		x += hsp;
		if (place_meeting(x + hsp, y, O_Wall))
		{
			while (abs(hsp) > 0.1)
			{
			hsp *= 0;
			if (!place_meeting(x + hsp, y, O_Wall)) x += hsp;
			}
		hsp = 0;
		}
	
		if (place_meeting(x, y + vsp, O_Wall))
		{
			while (abs(vsp) > 0.3)
			{
				vsp *= 0.5;
				if (!place_meeting(x, y + vsp, O_Wall)) x += vsp;
			}
		vsp = 0;
		}

		if (canbehit = 1) && (playerhp != 0)
		{
			playerfalling = 0;
			canbehit = 0
			playerhp -= 1
			flash = 3
		
			alarm[0] = 0.33*room_speed;
			vsp = -3
			hsp = -hsp
			hascontrol = false;
			if (idledir > 0) sprite_index = SPR_PlayerHurtRight
			if (idledir < 0) sprite_index = SPR_PlayerHurtLeft
		}
	}
	else state = PLAYERSTATE.FREE;
}