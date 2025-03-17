/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 58AACC2C
/// @DnDArgument : "code" "draw_self();$(13_10)$(13_10)if (flash > 0)$(13_10){$(13_10)	flash--;$(13_10)	shader_set(SH_White);$(13_10)	draw_self();$(13_10)	shader_reset();$(13_10)}"
draw_self();

if (flash > 0)
{
	flash--;
	shader_set(SH_White);
	draw_self();
	shader_reset();
}