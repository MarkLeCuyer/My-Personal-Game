if (done == 0)
{
	vsp = vsp + grv;

	// Horizontal collision
	if (place_meeting(x+hsp,y,oPlatform))
	{
		while (!place_meeting(x+sign(hsp),y,oPlatform))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp; 

	// Vertical collision
	if (place_meeting(x,y+vsp,oPlatform))
	{
		if (vsp > 0) 
		{
			done = 1;
			image_index = 1; 
		}
		while (!place_meeting(x,y+sign(vsp),oPlatform))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp; 
}