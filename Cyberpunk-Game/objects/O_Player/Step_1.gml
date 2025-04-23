/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6B0FDD25
/// @DnDArgument : "code" "global.playerhpglob = playerhp;$(13_10)if (playerhp <=0)$(13_10){$(13_10)	with(instance_create_layer(x,y,layer,O_DeadPlayer))$(13_10)	{$(13_10)		direction = other.hitfrom;$(13_10)		hsp = lengthdir_x(3,direction);$(13_10)		vsp = lengthdir_y(3,direction)-2;$(13_10)		if (sign(hsp) != 0)$(13_10)		{$(13_10)		image_xscale = sign(hsp);$(13_10)		}$(13_10)	}$(13_10)	instance_destroy();$(13_10)	instance_destroy(O_Gun);$(13_10)	instance_destroy(O_PlayerHurtbox);$(13_10)}"
global.playerhpglob = playerhp;
if (playerhp <=0)
{
	with(instance_create_layer(x,y,layer,O_DeadPlayer))
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
	instance_destroy(O_Gun);
	instance_destroy(O_PlayerHurtbox);
}