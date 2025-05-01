function SCR_PlayerStateAttackSlash()
{
	layer_set_visible("Gun",false)
	layer_set_visible("LowerGun",false)
	hsp = 0;
	vsp = 0;
	global.PlayerSwinging = true;

	//Start of attack
	if (sprite_index != SPR_PlayerSlashAttackRight) && (global.GunLayer > 0)
	{
		sprite_index = SPR_PlayerSlashAttackRight;
		mask_index = SPR_PlayerSlashAttackRightHB;
		image_index = 0;
		image_speed = 1;
		audio_sound_pitch(SND_PlayerSwing,choose(0.8,1.0,1.2));
		audio_play_sound(SND_PlayerSwing,5,false);
		ds_list_clear(hitByAttack);
	}
	if (sprite_index != SPR_PlayerSlashAttackLeft) && (global.GunLayer < 0)
	{
		sprite_index = SPR_PlayerSlashAttackLeft;
		mask_index = SPR_PlayerSlashAttackLeftHB;
		image_index = 0;
		image_speed = 1;
		audio_sound_pitch(SND_PlayerSwing,choose(0.8,1.0,1.2));
		audio_play_sound(SND_PlayerSwing,5,false);
		ds_list_clear(hitByAttack);
	}
	
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,O_Enemy,hitByAttackNow,false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			//If this instance has not been hit yet
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack,hitID) == -1)
			{
				ds_list_add(hitByAttack,hitID);
				with (hitID)
				{
					hp = hp - 1;
					flash = 3;
					hitfrom = direction;
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	if (SCR_AnimationEnd())
	{
		state = PLAYERSTATE.FREE
		layer_set_visible("Gun",true)
		layer_set_visible("LowerGun",true)
		global.PlayerSwinging = false;
		mask_index = SPR_PlayerWalkRightLookRight
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