/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FBA171B
/// @DnDArgument : "code" "with (O_Player)$(13_10){$(13_10)	hitfrom = other.direction$(13_10)	state = PLAYERSTATE.HURT;$(13_10)}$(13_10)$(13_10)instance_destroy();"
with (O_Player)
{
	hitfrom = other.direction
	state = PLAYERSTATE.HURT;
}

instance_destroy();