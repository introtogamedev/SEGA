if (global.accuracy = 1)
{
	y += 30
	image_xscale = 2;
	image_yscale = 2;
	
	//color editor
	var _col = c_red; //red
	var _hue = colour_get_hue(_col);
	var _sat = colour_get_saturation(_col);
	var _val = colour_get_value(_col);
	image_blend = make_colour_hsv(_hue,_sat + 30,_val);
	
}
else
{
	y += 30
	x += 50;
	image_xscale = 1;
	image_yscale = 1;
	
	//color editor 
	var _col = c_white; //yellow
	var _hue = colour_get_hue(_col);
	var _sat = colour_get_saturation(_col);
	var _val = colour_get_value(_col);
	image_blend = make_colour_hsv(_hue,_sat + 30,_val);
}


