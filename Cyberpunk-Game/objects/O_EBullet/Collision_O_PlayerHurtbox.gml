/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FBA171B
/// @DnDArgument : "code" "with (O_Player)$(13_10){$(13_10)	if (canbehit = 1) && (playerhp != 0)$(13_10)	{$(13_10)		hitfrom = other.direction$(13_10)		canbehit = 0$(13_10)		playerhp -= 1$(13_10)		flash = 3$(13_10)		alarm[0] = room_speed;$(13_10)	}$(13_10)	if (canbehit = 1) && (playerhp = 0)$(13_10)		hitfrom = other.direction$(13_10)}$(13_10)$(13_10)instance_destroy();"
with (O_Player)
{
	if (canbehit = 1) && (playerhp != 0)
	{
		hitfrom = other.direction
		canbehit = 0
		playerhp -= 1
		flash = 3
		alarm[0] = room_speed;
	}
	if (canbehit = 1) && (playerhp = 0)
		hitfrom = other.direction
}

instance_destroy();