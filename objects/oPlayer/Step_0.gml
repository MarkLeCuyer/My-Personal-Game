//Get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,my_tilemap)) && (key_jump)
{
	vsp = -7;
}

// Wall Jump
if (key_jump) && (place_meeting(x+1,y+1,oPlatform) || place_meeting(x-1,y-1,oPlatform))
{
	vsp = -jumpspeed;

}

// Horizontal collision
if (place_meeting(x+hsp,y,my_tilemap))
{
	while (!place_meeting(x+sign(hsp),y,my_tilemap))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp; 

// Vertical collision
if (place_meeting(x,y+vsp,my_tilemap))
{
	while (!place_meeting(x,y+sign(vsp),my_tilemap))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 

// Animation
if (!place_meeting(x,y+1,my_tilemap))
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
		with(instance_nearest(x, y, oBlaster)){
			sprite_index = sBlaster
		}
	}
	else 
	{
		sprite_index = sPlayerR; 
		with(instance_nearest(x, y, oBlaster)){
			sprite_index = sBlaster
		}
	}
}

if (hsp != 0) {
	image_xscale = sign(hsp);
	with(instance_nearest(x, y, oBlaster)){
		image_xscale = sign(hsp);
	}
}



















