/// @description Set Up Camera

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width (cam) * 0.4; 
view_h_half = camera_get_view_height (cam) * 0.7; 
xTo = xstart; 
yTo = ystart;

shake_length = 0; 
shake_magnitude = 0;
shake_remain = 0; 
buff = 32; 

Mountain1 = layer_get_id("bgMountain_1")
Mountain2 = layer_get_id("bgMountain_2")
Mountain3 = layer_get_id("bgMountain_3")

eTrees1 = layer_get_id("sTrees_1")
eTrees2 = layer_get_id("sTrees_2")
eTrees3 = layer_get_id("sTrees_3")

Trees1 = layer_get_id("bgTrees_1")
Trees2 = layer_get_id("bgTrees_2")
Trees3 = layer_get_id("bgTrees_3")


GrassPlatforms1 = layer_get_id("bgGrass_Platforms_1")
GrassPlatforms2 = layer_get_id("bgGrass_Platforms_2")
GrassPlatforms3 = layer_get_id("bgGrass_Platforms_3")
GrassPlatforms4 = layer_get_id("bgGrass_Platforms_4")