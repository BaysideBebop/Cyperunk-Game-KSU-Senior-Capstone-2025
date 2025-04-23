with (O_Player)
{
	if (canbehit = 1) && (playerhp != 0)
	{
		canbehit = 0
		playerhp -= 1
		flash = 3
		alarm[0] = room_speed;
		if (hsp > 0) hitfrom = 180
		if (hsp < 0) hitfrom = 0
	}
	if (canbehit = 1) && (playerhp = 0)
		hitfrom = other.direction
}