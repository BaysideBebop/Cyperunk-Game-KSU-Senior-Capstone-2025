/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FBA171B
/// @DnDArgument : "code" "if (global.playercanbehit = 1)$(13_10){$(13_10)	with (O_Player)$(13_10)	{$(13_10)		hitfrom = other.direction$(13_10)		state = PLAYERSTATE.HURT;$(13_10)	}$(13_10)$(13_10)	instance_destroy();$(13_10)}"
if (global.playercanbehit = 1)
{
	with (O_Player)
	{
		hitfrom = other.direction
		state = PLAYERSTATE.HURT;
	}

	instance_destroy();
}