/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69E90381
/// @DnDArgument : "code" "if (canbehit = 1) && (playerhp != 0)$(13_10){$(13_10)canbehit = 0$(13_10)playerhp -= 1$(13_10)flash = 3$(13_10)alarm[0] = 2*room_speed;$(13_10)}$(13_10)if (canbehit = 1) && (playerhp = 0)$(13_10)direction = point_direction(other.x,other.y,x,y);$(13_10)hitfrom = direction"
if (canbehit = 1) && (playerhp != 0)
{
canbehit = 0
playerhp -= 1
flash = 3
alarm[0] = 2*room_speed;
}
if (canbehit = 1) && (playerhp = 0)
direction = point_direction(other.x,other.y,x,y);
hitfrom = direction