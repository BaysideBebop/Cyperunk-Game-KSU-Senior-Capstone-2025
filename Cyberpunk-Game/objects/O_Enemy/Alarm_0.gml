/// @description Enemy Resume Movement When Player LOS Break
if (instance_exists(O_Player))
{
	if (collision_line(x-32,y,O_Player.x,O_Player.y,O_Wall,false,false))
	{
		hsp = hspWalk;
	}
}