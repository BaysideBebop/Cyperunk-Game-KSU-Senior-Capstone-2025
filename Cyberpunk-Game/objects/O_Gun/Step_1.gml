/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B5EF920
/// @DnDArgument : "code" "x = O_Player.x+15;$(13_10)y = O_Player.y+10;$(13_10)$(13_10)image_angle = point_direction(x,y,mouse_x,mouse_y)$(13_10)if (mouse_x > x)$(13_10){$(13_10)	image_yscale = 1;$(13_10)}$(13_10)else$(13_10){$(13_10)	image_yscale = -1;$(13_10)}$(13_10)$(13_10)$(13_10)firingdelay = firingdelay - 1;$(13_10)if (mouse_check_button(mb_left)) and (firingdelay < 0)$(13_10){$(13_10)	firingdelay = 5;	$(13_10)	with (instance_create_layer(x,y,"Bullets",O_Bullet))$(13_10)	{$(13_10)		speed = 25;	$(13_10)	}$(13_10)	$(13_10)}"
x = O_Player.x+15;
y = O_Player.y+10;

image_angle = point_direction(x,y,mouse_x,mouse_y)
if (mouse_x > x)
{
	image_yscale = 1;
}
else
{
	image_yscale = -1;
}


firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	firingdelay = 5;	
	with (instance_create_layer(x,y,"Bullets",O_Bullet))
	{
		speed = 25;	
	}
	
}