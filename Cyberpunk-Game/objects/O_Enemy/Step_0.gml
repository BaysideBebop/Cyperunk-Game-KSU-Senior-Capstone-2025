vsp = vsp + grv;

//Don't walk off edges
if (sign(hsp) > 0) looking = 1;
if (sign(hsp) < 0) looking = -1;
if (instance_exists(O_Player))
{
	if (point_distance(O_Player.x,O_Player.y,x-32,y) < 400) && (!collision_line(x,y,O_Player.x,O_Player.y,O_Wall,false,false)) && (hasweapon)
	{
		alarm[0] = room_speed;
		hsp = 0;
		if (O_Player.x < x)
		{
			sprite_index = SPR_ShooterIdleLeft;
			mask_index = SPR_ShooterIdleLeft;
			looking = -1;
		}
		if (O_Player.x > x)
		{
			sprite_index = SPR_ShooterIdleRight;
			mask_index = SPR_ShooterIdleRight;
			looking = 1;
		}
	}
}

x += hsp;
if (grounded) && (afraidofheights) && (!place_meeting(x + hsp - 60, y + 1, O_Wall))
{
	hsp = -hsp	
}

if (place_meeting(x + hsp + 32, y, O_Wall))
{
	hsp = -hsp;
}

if (stationary) hsp = 0;

if (place_meeting(x, y + vsp, O_Wall))
{
	if (vsp > 0) canJump = 10;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, O_Wall)) x += vsp;
	}
	vsp = 0;
}
y += vsp;

if (!place_meeting(x,y+1,O_Wall))
{
	grounded = false;
}
else
{
	grounded = true;	
}

//Animation
if (!place_meeting(x,y+1,O_Wall)) && (stationary)
{
	mask_index = SPR_CactusIdleLeft;
	sprite_index = SPR_CactusIdleLeft;
	image_speed = 1;
	if (sign(hsp) > 0)
	{
		image_index = 0;
	}
	else image_index = 1;
}
else
{
	if (instance_exists(O_Player))
	{
		if (stationary) && (O_Player.x < x)
		{
			mask_index = SPR_CactusIdleLeft;
			sprite_index = SPR_CactusIdleLeft;
			looking = -1;
		}
		if (stationary) && (O_Player.x > x)
		{
			mask_index = SPR_CactusIdleRight;
			sprite_index = SPR_CactusIdleRight;
			looking = 1;
		}
	}
	if (hsp != 0) && (sign(hsp) > 0)
	{
		sprite_index = SPR_ShooterWalkRight;
		mask_index = SPR_ShooterWalkRight;
		image_speed = 1;
	}
	if (hsp != 0) && (sign(hsp) < 0)
	{
		sprite_index = SPR_ShooterWalkLeft;
		mask_index = SPR_ShooterWalkLeft;
		image_speed = 1;
	}
	if (sign(hsp) > 0)
	{
		layer = layer_get_id("LowerEnemyGun");
	}
	if (sign(hsp) < 0)
	{
		layer = layer_get_id("EnemyGun");
	}
}