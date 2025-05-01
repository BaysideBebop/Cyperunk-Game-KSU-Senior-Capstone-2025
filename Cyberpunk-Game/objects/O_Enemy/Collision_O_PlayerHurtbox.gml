if (global.playercanbehit = 1)
{
	with (O_Player)
	{
		hitfrom = other.direction
		state = PLAYERSTATE.HURT;
	}
}