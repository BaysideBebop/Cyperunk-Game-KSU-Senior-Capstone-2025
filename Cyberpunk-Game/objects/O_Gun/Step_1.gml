/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B5EF920
/// @DnDArgument : "code" "x = O_Player.x+15;$(13_10)y = O_Player.y+10;$(13_10)$(13_10)image_angle = point_direction(x,y,mouse_x,mouse_y)$(13_10)$(13_10)firingdelay = firingdelay - 1;$(13_10)recoil = max(0,recoil - 1);$(13_10)$(13_10)if (mouse_check_button(mb_left)) and (firingdelay < 0)$(13_10){$(13_10)	recoil = 4;$(13_10)	firingdelay = 35;	$(13_10)	with (instance_create_layer(x-15,y,"Bullets",O_Bullet))$(13_10)	{$(13_10)		speed = 25;$(13_10)		direction = other.image_angle + random_range(-3,3);$(13_10)		image_angle = direction;$(13_10)	}$(13_10)}$(13_10)$(13_10)x = x - lengthdir_x(recoil,image_angle);$(13_10)y = y - lengthdir_y(recoil,image_angle);$(13_10)$(13_10)if (image_angle > 90) and (image_angle < 270)$(13_10){$(13_10)	image_yscale = -1;$(13_10)}$(13_10)else$(13_10){$(13_10)	image_yscale = 1;	$(13_10)}"
x = O_Player.x+15;
y = O_Player.y+10;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 35;	
	with (instance_create_layer(x-15,y,"Bullets",O_Bullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;	
}