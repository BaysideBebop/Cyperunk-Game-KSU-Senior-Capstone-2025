/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FBA171B
/// @DnDArgument : "code" "with (other)$(13_10){$(13_10)	hp = hp - 1;$(13_10)	flash = 3;$(13_10)	hitfrom = other.direction$(13_10)	beinghurt = true;$(13_10)}$(13_10)$(13_10)instance_destroy();"
with (other)
{
	hp = hp - 1;
	flash = 3;
	hitfrom = other.direction
	beinghurt = true;
}

instance_destroy();