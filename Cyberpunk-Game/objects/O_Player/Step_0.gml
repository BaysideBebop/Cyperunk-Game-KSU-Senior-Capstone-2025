if (hascontrol)
{
	var _keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var _keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var _keyJump = keyboard_check(vk_space) or keyboard_check(ord("W")) or keyboard_check(vk_up);
	var _keyAttack = (mouse_check_button(mb_right));
	var _keyReload = keyboard_check(vk_control) or keyboard_check(ord("R"));
}
else
{
	var _keyRight = 0;
	var _keyLeft = 0;
	var _keyJump = 0;
	var _keyAttack = 0;
	var _keyReload = 0;
}
switch (state)
{
	case PLAYERSTATE.FREE:	SCR_PlayerStateFree(); break;
	case PLAYERSTATE.ATTACKSLASH: SCR_PlayerStateAttackSlash(); break;
	case PLAYERSTATE.RELOAD: SCR_PlayerStateReload(); break;
	case PLAYERSTATE.HURT: SCR_PlayerStateHurt(); break;
	case PLAYERSTATE.DASH: SCR_PlayerStateDash(); break;
}