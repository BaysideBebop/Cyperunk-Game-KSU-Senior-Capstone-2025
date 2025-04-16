/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3598064C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (sign(owner.hsp < 0))$(13_10){$(13_10)	x = owner.x+10;	$(13_10)}$(13_10)else$(13_10){$(13_10)	x = owner.x+16;$(13_10)}$(13_10)y = owner.y+20;$(13_10)$(13_10)image_xscale = abs(owner.image_xscale);$(13_10)image_yscale = abs(owner.image_yscale);$(13_10)image_angle = 0;$(13_10)$(13_10)if (sign(owner.hsp) < 0) image_xscale = -image_xscale;$(13_10)$(13_10)if (instance_exists(O_Player))$(13_10){$(13_10)	if (point_distance(O_Player.x,O_Player.y,x,y) < 360)$(13_10)	{$(13_10)		if (!collision_line(x,y,O_Player.x,O_Player.y,O_Wall,false,false))$(13_10)		{$(13_10)		image_angle = point_direction(x,y,O_Player.x,O_Player.y);$(13_10)		countdown--;$(13_10)		if (image_angle > 90) and (image_angle < 270)$(13_10)		{$(13_10)			image_yscale = -1;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			image_yscale = 1;	$(13_10)		}$(13_10)		}$(13_10)		if (countdown <=0)$(13_10)		{$(13_10)			countdown = countdownrate;$(13_10)			if (!collision_line(x,y,O_Player.x,O_Player.y,O_Wall,false,false))$(13_10)			{$(13_10)				owner.hsp = 0$(13_10)				//Bullet code$(13_10)				audio_sound_pitch(SND_PlayerShot,choose(0.8,1.0,1.2));$(13_10)				audio_play_sound(SND_PlayerShot,5,false);$(13_10)				with (instance_create_layer(x-15,y,"Bullets",O_EBullet))$(13_10)				{$(13_10)				speed = 10;$(13_10)				direction = other.image_angle + random_range(-3,3);$(13_10)				image_angle = direction;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}"
/// @description Execute Code
if (sign(owner.hsp < 0))
{
	x = owner.x+10;	
}
else
{
	x = owner.x+16;
}
y = owner.y+20;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);
image_angle = 0;

if (sign(owner.hsp) < 0) image_xscale = -image_xscale;

if (instance_exists(O_Player))
{
	if (point_distance(O_Player.x,O_Player.y,x,y) < 360)
	{
		if (!collision_line(x,y,O_Player.x,O_Player.y,O_Wall,false,false))
		{
		image_angle = point_direction(x,y,O_Player.x,O_Player.y);
		countdown--;
		if (image_angle > 90) and (image_angle < 270)
		{
			image_yscale = -1;
		}
		else
		{
			image_yscale = 1;	
		}
		}
		if (countdown <=0)
		{
			countdown = countdownrate;
			if (!collision_line(x,y,O_Player.x,O_Player.y,O_Wall,false,false))
			{
				owner.hsp = 0
				//Bullet code
				audio_sound_pitch(SND_PlayerShot,choose(0.8,1.0,1.2));
				audio_play_sound(SND_PlayerShot,5,false);
				with (instance_create_layer(x-15,y,"Bullets",O_EBullet))
				{
				speed = 10;
				direction = other.image_angle + random_range(-3,3);
				image_angle = direction;
				}
			}
		}
	}
	
}