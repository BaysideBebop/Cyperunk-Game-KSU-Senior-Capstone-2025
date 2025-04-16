function SCR_PlayerStateAttackSlash()
{
	hsp = 0;

	//Start of attack
	if (sprite_index != SPR_PlayerSlashAttackRight)
	{
		sprite_index = SPR_PlayerSlashAttackRight;
		image_index = 0;
		image_speed = 1;
		ds_list_clear(hitByAttack);
	}

	mask_index = SPR_PlayerSlashAttackRightHB
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
					hitfrom = other.direction
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	if (SCR_AnimationEnd())
	{
		sprite_index = SPR_PlayerIdleRight
		state = PLAYERSTATE.FREE
	}
}