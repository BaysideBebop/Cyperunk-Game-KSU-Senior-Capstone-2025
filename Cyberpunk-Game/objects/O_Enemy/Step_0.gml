vsp = vsp + grv;

//Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x + hsp, y + 1, O_Wall))
{
	hsp = -hsp	
}

if (place_meeting(x + hsp, y, O_Wall))
{

	hsp = -hsp;
}

if (stationary) hsp = 0;

x += hsp;

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
if (!place_meeting(x,y+1,O_Wall))
{
	sprite_index = SPR_PlayerFalling;
	image_speed = 0;
	if (sign(hsp) > 0)
	{
		image_index = 0;
	}
	else image_index = 1;
}
else
{
	if (hsp == 0)
	{
		sprite_index = SPR_PlayerIdleRight;
	}
	if (hsp == 0)
	{
		sprite_index = SPR_PlayerIdleLeft;
	}
	if (hsp != 0) && (sign(hsp) > 0)
	{
		sprite_index = SPR_PlayerWalkRightLookRight;
		image_speed = 1;
	}
	if (hsp != 0) && (sign(hsp) < 0)
	{
		sprite_index = SPR_PlayerWalkLeftLookLeft;
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
