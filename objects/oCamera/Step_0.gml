/// @description Update Camera

// Update  desination 
if (instance_exists(follow))
{

	xTo = follow.x;
	yTo = follow.y;
}

// Update object position 
x += (xTo - x) /25;
y += (yTo - y) /5;


// keep camera center inside room
x = clamp (x,view_w_half+buff, room_width-view_w_half);
y = clamp (y,view_h_half+buff, room_width-view_h_half);

// Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera view 
camera_set_view_pos(cam,x-view_w_half,y-view_h_half+10);

if (layer_exists(Mountain2))
{
	layer_x(Mountain2, x/4);
}

if (layer_exists(Mountain3))
{
	layer_x(Mountain3, x/2);
}

if (layer_exists(Mountain1))
{
	layer_x(Mountain1, x/8);
}

if (layer_exists(Trees3))
{
	layer_x(Trees3, x/4);
}

if (layer_exists(Trees2))
{
	layer_x(Trees2, x/8);
}

if (layer_exists(Trees1))
{
	layer_x(Trees1, x/20);
}

if (layer_exists(GrassPlatforms4)) {layer_x(GrassPlatforms4, x/2)}

if (layer_exists(GrassPlatforms3)) {layer_x(GrassPlatforms3, x/4)}

if (layer_exists(GrassPlatforms2)) {layer_x(GrassPlatforms2, x/6)}

if (layer_exists(GrassPlatforms1)) {layer_x(GrassPlatforms1, x/12)}
