/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B5EF920
/// @DnDArgument : "code" "x = O_Player.x+15;$(13_10)y = O_Player.y+10;$(13_10)$(13_10)image_angle = point_direction(x,y,mouse_x,mouse_y)$(13_10)$(13_10)firingdelay = firingdelay - 1;$(13_10)recoil = max(0,recoil - 1);$(13_10)$(13_10)if (mouse_check_button(mb_left)) and (firingdelay < 0)$(13_10){$(13_10)	recoil = 4;$(13_10)	firingdelay = 20;	$(13_10)	with (instance_create_layer(x-15,y,"Bullets",O_Bullet))$(13_10)	{$(13_10)		speed = 25;$(13_10)		direction = other.image_angle + random_range(-3,3);$(13_10)		image_angle = direction;$(13_10)	}$(13_10)}$(13_10)"
x = O_Player.x+15;
y = O_Player.y+10;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 20;	
	with (instance_create_layer(x-15,y,"Bullets",O_Bullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}