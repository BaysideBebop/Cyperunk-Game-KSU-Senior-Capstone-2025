/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B72B12A
/// @DnDArgument : "code" "if (hp <=0) && (!stationary)$(13_10){$(13_10)	with(instance_create_layer(x,y,layer,O_DeadEnemy))$(13_10)	{$(13_10)		direction = other.hitfrom;$(13_10)		hsp = lengthdir_x(3,direction);$(13_10)		vsp = lengthdir_y(3,direction)-2;$(13_10)		if (sign(hsp) != 0)$(13_10)		{$(13_10)		image_xscale = sign(hsp);$(13_10)		}$(13_10)	}$(13_10)	with (mygun) instance_destroy();$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)if (hp <=0) && (stationary)$(13_10){$(13_10)	with(instance_create_layer(x,y-50,layer,O_DeadEnemy))$(13_10)	{$(13_10)		direction = other.hitfrom;$(13_10)		hsp = lengthdir_x(3,direction);$(13_10)		vsp = lengthdir_y(3,direction)-2;$(13_10)		if (sign(hsp) != 0)$(13_10)		{$(13_10)		image_xscale = sign(hsp);$(13_10)		}$(13_10)	}$(13_10)	instance_destroy();$(13_10)}"
if (hp <=0) && (!stationary)
{
	with(instance_create_layer(x,y,layer,O_DeadEnemy))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) != 0)
		{
		image_xscale = sign(hsp);
		}
	}
	with (mygun) instance_destroy();
	instance_destroy();
}

if (hp <=0) && (stationary)
{
	with(instance_create_layer(x,y-50,layer,O_DeadEnemy))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) != 0)
		{
		image_xscale = sign(hsp);
		}
	}
	instance_destroy();
}