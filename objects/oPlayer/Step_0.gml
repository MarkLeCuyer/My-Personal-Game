//Get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oPlatform)) && (key_jump)
{
	vsp = -7;
}

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
	while (!place_meeting(x,y+sign(vsp),oPlatform))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 

// Animation
if (!place_meeting(x,y+1,oPlatform))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = sPlayer; 
	}
	else 
	{
		sprite_index = sPlayerR; 
	}
}

if (hsp != 0) image_xscale = sign(hsp);


















