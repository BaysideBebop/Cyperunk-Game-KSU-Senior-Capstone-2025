function SCR_PlayerStateFree()
{
if (hascontrol)
{
	var _keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var _keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var _keyJump = keyboard_check(vk_space) or keyboard_check(ord("W")) or keyboard_check(vk_up);
	var _keyAttack = (mouse_check_button(mb_right))
	var _keyReload = keyboard_check(ord("R"));
}
else
{
	var _keyRight = 0;
	var _keyLeft = 0;
	var _keyJump = 0;
	var _keyAttack = 0;
	var _keyReload = 0;
}

hsp = (_keyRight - _keyLeft) * hspWalk;

vsp = vsp + grv;
global.GunLayer = idledir

if (canJump-- > 0) && (_keyJump) && (!place_meeting(x, y-5, O_Wall))
{
	vsp = vspJump;
	canJump = 0;
}

if (place_meeting(x + hsp, y, O_Wall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0;
		if (!place_meeting(x + hsp, y, O_Wall)) x += hsp;
	}
	hsp = 0;
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

//Animation
if (!place_meeting(x,y+1,O_Wall))
{
	playerfalling = 1;
	if (sign(hsp) > 0)
	{
	sprite_index = SPR_PlayerFallingRight;
	}
	else sprite_index = SPR_PlayerFallingLeft;
}
else
{
	playerfalling = 0;
	if (hsp == 0) && (idledir > 0) && (global.GunAngle = 1)
	{
		sprite_index = SPR_PlayerIdleRight;
		image_index = 1
	}
		if (hsp == 0) && (idledir > 0) && (global.GunAngle = 0)
	{
		sprite_index = SPR_PlayerIdleRight;
		image_index = 0
	}
	if (hsp == 0) && (idledir < 0) && (global.GunAngle = 1)
	{
		sprite_index = SPR_PlayerIdleLeft;
		image_index = 0
	}
		if (hsp == 0) && (idledir < 0) && (global.GunAngle = 0)
	{
		sprite_index = SPR_PlayerIdleLeft;
		image_index = 1
	}
	if (hsp != 0) && (sign(hsp) > 0)
	{
		sprite_index = SPR_PlayerWalkRightLookRight;
		image_speed = 1;
		idledir = sign(hsp);
		if (global.GunAngle = 1)
		{
			sprite_index = SPR_PlayerWalkRightLookLeft
		}
	}
	if (hsp != 0) && (sign(hsp) < 0)
	{
		sprite_index = SPR_PlayerWalkLeftLookLeft;
		image_speed = 1;
		idledir = sign(hsp);
		if (global.GunAngle = 0)
		{
			sprite_index = SPR_PlayerWalkLeftLookRight	
		}
	}
}


if (_keyAttack) state = PLAYERSTATE.ATTACKSLASH

if (_keyReload) && (playerfalling == 0) state = PLAYERSTATE.RELOAD
}