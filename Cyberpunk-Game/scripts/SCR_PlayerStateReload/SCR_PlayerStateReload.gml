// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SCR_PlayerStateReload()
{
	layer_set_visible("Gun",false)
	layer_set_visible("LowerGun",false)
	hsp = 0;
	global.PlayerSwinging = true;
	reloadrate = reloadrate - room_speed
	
	if (global.GunLayer > 0) && (O_Gun.ammo < 6) && (O_Gun.reserve > 0) && (reloadrate < 0)
	{
		sprite_index = SPR_PlayerReloadRight
		image_index = 0
		image_speed = 1
		canreload = 0
		reloadrate = 6000
		O_Gun.ammo = O_Gun.ammo + 1
		O_Gun.reserve = O_Gun.reserve - 1
	}
	
	if (global.GunLayer < 0) && (O_Gun.ammo < 6)  && (O_Gun.reserve > 0) && (reloadrate < 0)
	{
		sprite_index = SPR_PlayerReloadLeft
		image_index = 0
		image_speed = 1
		canreload = 0
		reloadrate = 6000
		O_Gun.ammo = O_Gun.ammo + 1
		O_Gun.reserve = O_Gun.reserve - 1
	}
	if (O_Gun.ammo == 6) or (O_Gun.reserve == 0)
	{
	state = PLAYERSTATE.FREE
		layer_set_visible("Gun",true)
		layer_set_visible("LowerGun",true)
		global.PlayerSwinging = false;
		if (global.GunLayer > 0)
		{
			sprite_index = SPR_PlayerIdleRight
		}
		if (global.GunLayer < 0)
		{
			sprite_index = SPR_PlayerIdleLeft
		}	
	}
}