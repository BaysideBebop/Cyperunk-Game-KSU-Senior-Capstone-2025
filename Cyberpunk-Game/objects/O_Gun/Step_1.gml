/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B5EF920
/// @DnDArgument : "code" "x = O_Player.x+15;$(13_10)y = O_Player.y+10;$(13_10)$(13_10)image_angle = point_direction(x,y,mouse_x,mouse_y)$(13_10)if(mouse_x > x) image_yscale = 1; else image_yscale = -1;"
x = O_Player.x+15;
y = O_Player.y+10;

image_angle = point_direction(x,y,mouse_x,mouse_y)
if(mouse_x > x) image_yscale = 1; else image_yscale = -1;