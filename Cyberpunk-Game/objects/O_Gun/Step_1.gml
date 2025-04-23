/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B5EF920
/// @DnDArgument : "code" "if (global.GunLayer < 0)$(13_10){$(13_10)	x = O_Player.x+10;	$(13_10)}$(13_10)if (global.GunLayer > 0)$(13_10){$(13_10)	x = O_Player.x+7;$(13_10)}$(13_10)y = O_Player.y+20;$(13_10)$(13_10)image_angle = point_direction(x,y,mouse_x,mouse_y)$(13_10)$(13_10)firingdelay = firingdelay - 1;$(13_10)recoil = max(0,recoil - 1);$(13_10)global.AmmoCount = ammo;$(13_10)global.ReserveCount = reserve;$(13_10)$(13_10)$(13_10)if (mouse_check_button(mb_left)) && (firingdelay < 0) && (global.PlayerSwinging = false) && (ammo > 0)$(13_10){$(13_10)	recoil = 4;$(13_10)	firingdelay = 35;$(13_10)	ammo = ammo - 1;$(13_10)	audio_sound_pitch(SND_PlayerShot,choose(0.8,1.0,1.2));$(13_10)	audio_play_sound(SND_PlayerShot,5,false);$(13_10)	with (instance_create_layer(x-15,y,"Bullets",O_Bullet))$(13_10)	{$(13_10)		speed = 25;$(13_10)		direction = other.image_angle + random_range(-3,3);$(13_10)		image_angle = direction;$(13_10)	}$(13_10)}$(13_10)$(13_10)x = x - lengthdir_x(recoil,image_angle);$(13_10)y = y - lengthdir_y(recoil,image_angle);$(13_10)$(13_10)if (image_angle > 90) and (image_angle < 270)$(13_10){$(13_10)	global.GunAngle = 1$(13_10)	image_yscale = -1;$(13_10)}$(13_10)else$(13_10){$(13_10)	global.GunAngle = 0$(13_10)	image_yscale = 1;	$(13_10)}$(13_10)$(13_10)if (global.GunLayer < 0)$(13_10){$(13_10)	layer = layer_get_id("LowerGun");$(13_10)}$(13_10)if (global.GunLayer > 0) or (global.GunLayer < 0) && (global.GunAngle = 0)$(13_10){$(13_10)	layer = layer_get_id("Gun");$(13_10)	x = O_Player.x+7;$(13_10)}"
if (global.GunLayer < 0)
{
	x = O_Player.x+10;	
}
if (global.GunLayer > 0)
{
	x = O_Player.x+7;
}
y = O_Player.y+20;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);
global.AmmoCount = ammo;
global.ReserveCount = reserve;


if (mouse_check_button(mb_left)) && (firingdelay < 0) && (global.PlayerSwinging = false) && (ammo > 0)
{
	recoil = 4;
	firingdelay = 35;
	ammo = ammo - 1;
	audio_sound_pitch(SND_PlayerShot,choose(0.8,1.0,1.2));
	audio_play_sound(SND_PlayerShot,5,false);
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
	global.GunAngle = 1
	image_yscale = -1;
}
else
{
	global.GunAngle = 0
	image_yscale = 1;	
}

if (global.GunLayer < 0)
{
	layer = layer_get_id("LowerGun");
}
if (global.GunLayer > 0) or (global.GunLayer < 0) && (global.GunAngle = 0)
{
	layer = layer_get_id("Gun");
	x = O_Player.x+7;
}