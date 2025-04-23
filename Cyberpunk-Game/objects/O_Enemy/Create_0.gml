grv = 0.2;
hspWalk = 1.25;
hsp = hspWalk;
vsp = 0;
vspJump = -6;
canJump = 0;
grounded = false;

flash = 0;
hitfrom = 0;
beinghurt = 0;
looking = 1;

image_speed = 1

if (hasweapon)
{
	mygun = instance_create_layer(x,y,"EnemyGun",O_EGun)	
	with (mygun)
	{
		owner = other.id	
	}
}
else mygun = noone;