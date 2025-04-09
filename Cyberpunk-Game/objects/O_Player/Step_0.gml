var _keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _keyJump = keyboard_check(vk_space) or keyboard_check(ord("W"));
var _keyAttack = (mouse_check_button(mb_right))

switch (state)
{
	case PLAYERSTATE.FREE:	SCR_PlayerStateFree(); break;
	case PLAYERSTATE.ATTACKSLASH: SCR_PlayerStateAttackSlash(); break;
}