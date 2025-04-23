/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DECEEBF
/// @DnDArgument : "code" "if (done == 0)$(13_10){$(13_10)	vsp = vsp + grv;$(13_10)$(13_10)	if (place_meeting(x + hsp, y, O_Wall))$(13_10)	{$(13_10)		while (abs(hsp) > 0.1)$(13_10)		{$(13_10)			hsp *= 0.5;$(13_10)			if (!place_meeting(x + hsp, y, O_Wall)) x += hsp;$(13_10)		}$(13_10)		hsp = 0;$(13_10)	}$(13_10)	x += hsp;$(13_10)$(13_10)	if (place_meeting(x, y + vsp, O_Wall))$(13_10)	{$(13_10)		if (vsp > 0)$(13_10)		{$(13_10)			done = 1;$(13_10)			$(13_10)			image_index = 1;$(13_10)		}$(13_10)		while (abs(vsp) > 0.1)$(13_10)		{$(13_10)			vsp *= 0.5;$(13_10)			if (!place_meeting(x, y + vsp, O_Wall)) x += vsp;$(13_10)		}$(13_10)		vsp = 0;$(13_10)	}$(13_10)	y += vsp;$(13_10)}$(13_10)$(13_10)if (done == 1) && (HasPickUpSpawned == 0)$(13_10)	if (PickUpSpawn == 1) && (HasPickUpSpawned == 0)$(13_10)	{$(13_10)		instance_create_layer(x,y,"Enemy",O_Coin)$(13_10)		HasPickUpSpawned = 1$(13_10)	}$(13_10)	if (PickUpSpawn == 2) && (HasPickUpSpawned == 0)$(13_10)	{$(13_10)		instance_create_layer(x,y,"Enemy",O_HealthPickup)$(13_10)		HasPickUpSpawned = 1$(13_10)	}"
if (done == 0)
{
	vsp = vsp + grv;

	if (place_meeting(x + hsp, y, O_Wall))
	{
		while (abs(hsp) > 0.1)
		{
			hsp *= 0.5;
			if (!place_meeting(x + hsp, y, O_Wall)) x += hsp;
		}
		hsp = 0;
	}
	x += hsp;

	if (place_meeting(x, y + vsp, O_Wall))
	{
		if (vsp > 0)
		{
			done = 1;
			
			image_index = 1;
		}
		while (abs(vsp) > 0.1)
		{
			vsp *= 0.5;
			if (!place_meeting(x, y + vsp, O_Wall)) x += vsp;
		}
		vsp = 0;
	}
	y += vsp;
}

if (done == 1) && (HasPickUpSpawned == 0)
	if (PickUpSpawn == 1) && (HasPickUpSpawned == 0)
	{
		instance_create_layer(x,y,"Enemy",O_Coin)
		HasPickUpSpawned = 1
	}
	if (PickUpSpawn == 2) && (HasPickUpSpawned == 0)
	{
		instance_create_layer(x,y,"Enemy",O_HealthPickup)
		HasPickUpSpawned = 1
	}