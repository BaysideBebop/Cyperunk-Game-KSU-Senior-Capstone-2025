function SCR_PlayerStateFree()
{
if (hascontrol)
{
	var _keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var _keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var _keyJump = keyboard_check(vk_space) or keyboard_check(ord("W")) or keyboard_check(vk_up);
	var _keyAttack = (mouse_check_button(mb_right))
	var _keyReload = keyboard_check(ord("R"));
	var _keyDash = keyboard_check(vk_shift);
}
else
{
	var _keyRight = 0;
	var _keyLeft = 0;
	var _keyJump = 0;
	var _keyAttack = 0;
	var _keyReload = 0;
	var _keyDash = 0;
}

hsp = (_keyRight - _keyLeft) * hspWalk;

vsp = vsp + grv;
candash = true;
global.GunLayer = idledir

if (canJump-- > 0) && (_keyJump) && (!place_meeting(x, y-5, O_Wall))
{
	vsp = vspJump;
	canJump = 0;
}

if (place_meeting(x + hsp*2, y, O_Wall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0;
		if (!place_meeting(x + hsp, y, O_Wall)) x += hsp;
	}
	hsp = 0;
	candash = false;
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
if (!place_meeting(x,y+1,O_Wall)) && (canbehit = 1)
{
	playerfalling = 1;
	if (sign(hsp) > 0)
	{
	sprite_index = SPR_PlayerFallingRightFacingRight;
	}
	else sprite_index = SPR_PlayerFallingLeftFacingLeft;
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
			idledir = sign(hsp);
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
			idledir = sign(hsp);
		}
	}
}


if (_keyAttack) && (playerfalling == 0) && (isbeinghurt = false) && (global.PlayerSwinging = false) state = PLAYERSTATE.ATTACKSLASH

if (_keyReload) && (O_Gun.ammo < 6) && (O_Gun.reserve > 0) && (playerfalling == 0) && (isbeinghurt = false) && (global.PlayerSwinging = false) state = PLAYERSTATE.RELOAD

if (_keyDash) && (hsp != 0) && (playerfalling == 0) && (isbeinghurt = false) && (global.PlayerSwinging = false) && (candash = true) && (hascontrol = true) state = PLAYERSTATE.DASH
}