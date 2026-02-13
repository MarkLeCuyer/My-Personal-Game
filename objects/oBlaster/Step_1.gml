x = oPlayer.x-24; 
y = oPlayer.y-10;


firingdelay = firingdelay -1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 20;
	ScreenShake(2,5);
	audio_play_sound(snShooting,5,false);
	with (instance_create_layer(x,y+32,"Lazer",oLazer))
	{
		speed = 20;
		direction = other.image_xscale + random_range(-3,3);
		image_angle = direction;
		
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle); 

if mouse_x < x {
	image_yscale = -1
}
else {
	image_yscale = 1
}


