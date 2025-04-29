/// @description Collect health
with (O_Player)
{
	if (playerhp < 3) playerhp = playerhp + 1;
}
instance_destroy();