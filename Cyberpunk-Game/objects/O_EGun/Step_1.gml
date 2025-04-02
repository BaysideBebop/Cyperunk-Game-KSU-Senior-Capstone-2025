/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3598064C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)x = owner.x+15;$(13_10)y = owner.y+10;$(13_10)$(13_10)image_xscale = abs(owner.image_xscale);$(13_10)image_yscale = abs(owner.image_yscale);$(13_10)$(13_10)if (instance_exists(O_Player))$(13_10){$(13_10)	if (O_Player.x < x) image_yscale = -image_yscale;$(13_10)	if (point_distance(O_Player.x,O_Player.y,x,y) < 600)$(13_10)	{$(13_10)		image_angle = point_direction(x,y,O_Player.x,O_Player.y);$(13_10)		countdown--;$(13_10)		if (countdown <=0)$(13_10)		{$(13_10)			countdown = countdownrate;$(13_10)			//Bullet code here$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}"
/// @description Execute Code
x = owner.x+15;
y = owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(O_Player))
{
	if (O_Player.x < x) image_yscale = -image_yscale;
	if (point_distance(O_Player.x,O_Player.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,O_Player.x,O_Player.y);
		countdown--;
		if (countdown <=0)
		{
			countdown = countdownrate;
			//Bullet code here
		}
	}
	
}