/// @description Insert description here
// You can write your code in this editor

if (global.in_shop) {
	visible = true;
	x = 66;
	y = 560;
	if (button_feedback(obj_back) == "released") {
		global.in_shop = false;
		image_index = 0;
	}
	else if (button_feedback(obj_back) == "pressed") {
		image_index = 2;
	}
	else if (button_feedback(obj_back) == "hovering") {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	visible = false;
	x = 5000;
	y = 5000;
}





