grv = 0.2;
hspWalk = 1.5;
hsp = hspWalk;
vsp = 0;
vspJump = -6;
canJump = 0;
grounded = false;

flash = 0;
hitfrom = 0;

image_speed = 0

if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",O_EGun)	
	with (mygun)
	{
		owner = other.id	
	}
}
else mygun = noone;