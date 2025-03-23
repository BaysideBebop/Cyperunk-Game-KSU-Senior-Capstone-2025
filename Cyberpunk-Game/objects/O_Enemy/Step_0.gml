vsp = vsp + grv;

//Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x + hsp, y + 1, O_Wall))
{
	hsp = -hsp	
}

if (place_meeting(x + hsp, y, O_Wall))
{

	hsp = -hsp;
}
x += hsp;

if (place_meeting(x, y + vsp, O_Wall))
{
	if (vsp > 0) canJump = 10;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, O_Wall)) x += vsp;
	}
	vsp = 0;
}
y += vsp;

if (!place_meeting(x,y+1,O_Wall))
{
	grounded = false;
}
else
{
	grounded = true;	
}