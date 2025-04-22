/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3598064C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (sign(owner.hsp < 0)) && (image_xscale < 0)$(13_10){$(13_10)	x = owner.x+20;	$(13_10)}$(13_10)if (sign(owner.hsp > 0)) && (image_xscale > 0)$(13_10){$(13_10)	x = owner.x+30;$(13_10)}$(13_10)y = owner.y+20;$(13_10)$(13_10)if (sign(owner.hsp == 0))$(13_10){$(13_10)	x = owner.x+25;	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)image_xscale = owner.looking;$(13_10)image_yscale = abs(owner.image_yscale);$(13_10)image_angle = 0;$(13_10)$(13_10)if (sign(owner.hsp) < 0) image_xscale = -image_xscale;$(13_10)$(13_10)if (instance_exists(O_Player))$(13_10){$(13_10)	if (owner.facingright) && (O_Player.x > x) && (owner.stationary) image_xscale = 1;$(13_10)	if (owner.facingright) && (O_Player.x < x) && (owner.stationary) image_xscale = -1;$(13_10)	if (point_distance(O_Player.x,O_Player.y,x,y) < 300)$(13_10)	{$(13_10)		if (!collision_line(x,y,O_Player.x,O_Player.y,O_Wall,false,false))$(13_10)		{$(13_10)		image_angle = point_direction(x,y,O_Player.x+10,O_Player.y+10);$(13_10)		countdown--;$(13_10)		if (image_angle > 90) and (image_angle < 270)$(13_10)		{$(13_10)			image_yscale = -1;$(13_10)			image_xscale = 1$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			image_yscale = 1;	$(13_10)		}$(13_10)		}$(13_10)		if (countdown <=0)$(13_10)		{$(13_10)			countdown = countdownrate;$(13_10)			if (!collision_line(x,y,O_Player.x,O_Player.y,O_Wall,false,false))$(13_10)			{$(13_10)				//Bullet code$(13_10)				audio_sound_pitch(SND_PlayerShot,choose(0.8,1.0,1.2));$(13_10)				audio_play_sound(SND_PlayerShot,5,false);$(13_10)				with (instance_create_layer(x-15,y,"Bullets",O_EBullet))$(13_10)				{$(13_10)					speed = 10;$(13_10)					direction = other.image_angle + random_range(-3,3);$(13_10)					image_angle = direction;$(13_10)				}$(13_10)				if (O_Player.x < x)$(13_10)				{$(13_10)					owner.sprite_index = SPR_ShooterIdleLeft;$(13_10)					owner.looking = -1;$(13_10)				}$(13_10)				if (O_Player.x > x)$(13_10)				{$(13_10)					owner.sprite_index = SPR_ShooterIdleRight;$(13_10)					owner.looking = 1;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}"
/// @description Execute Code
if (sign(owner.hsp < 0)) && (image_xscale < 0)
{
	x = owner.x+20;	
}
if (sign(owner.hsp > 0)) && (image_xscale > 0)
{
	x = owner.x+30;
}
y = owner.y+20;

if (sign(owner.hsp == 0))
{
	x = owner.x+25;	
}



image_xscale = owner.looking;
image_yscale = abs(owner.image_yscale);
image_angle = 0;

if (sign(owner.hsp) < 0) image_xscale = -image_xscale;

if (instance_exists(O_Player))
{
	if (owner.facingright) && (O_Player.x > x) && (owner.stationary) image_xscale = 1;
	if (owner.facingright) && (O_Player.x < x) && (owner.stationary) image_xscale = -1;
	if (point_distance(O_Player.x,O_Player.y,x,y) < 300)
	{
		if (!collision_line(x,y,O_Player.x,O_Player.y,O_Wall,false,false))
		{
		image_angle = point_direction(x,y,O_Player.x+10,O_Player.y+10);
		countdown--;
		if (image_angle > 90) and (image_angle < 270)
		{
			image_yscale = -1;
			image_xscale = 1
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
				//Bullet code
				audio_sound_pitch(SND_PlayerShot,choose(0.8,1.0,1.2));
				audio_play_sound(SND_PlayerShot,5,false);
				with (instance_create_layer(x-15,y,"Bullets",O_EBullet))
				{
					speed = 10;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
				}
				if (O_Player.x < x)
				{
					owner.sprite_index = SPR_ShooterIdleLeft;
					owner.looking = -1;
				}
				if (O_Player.x > x)
				{
					owner.sprite_index = SPR_ShooterIdleRight;
					owner.looking = 1;
				}
			}
		}
	}
	
}