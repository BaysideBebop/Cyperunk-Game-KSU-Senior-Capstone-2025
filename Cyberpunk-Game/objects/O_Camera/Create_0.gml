/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 22724042
/// @DnDArgument : "code" "/// @description Set up camera$(13_10)cam = view_camera[0];$(13_10)if (instance_exists(O_Player))$(13_10){$(13_10)follow = O_Player;$(13_10)}$(13_10)else$(13_10){$(13_10)follow = O_DeadPlayer;$(13_10)}$(13_10)view_w_half = camera_get_view_width(cam) * 0.5;$(13_10)view_h_half = camera_get_view_height(cam) * 0.5;$(13_10)xTo = xstart;$(13_10)yTo = ystart;"
/// @description Set up camera
cam = view_camera[0];
if (instance_exists(O_Player))
{
follow = O_Player;
}
else
{
follow = O_DeadPlayer;
}
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;