function SCR_PlayerStateFree()
{
var _keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _keyJump = keyboard_check(vk_space) or keyboard_check(ord("W"));
var _keyAttack = (mouse_check_button(mb_right))

hsp = (_keyRight - _keyLeft) * hspWalk;

vsp = vsp + grv;

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
image_speed = 0

if (_keyAttack) state = PLAYERSTATE.ATTACKSLASH
}