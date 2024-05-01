/// @description Insert description here
// You can write your code in this editor

if (mouse_x > obj_entershop.x && mouse_x < obj_entershop.x+obj_entershop.sprite_width 
&& mouse_y > obj_entershop.y && mouse_y < obj_entershop.y+obj_entershop.sprite_height) {
	image_index = 1;
	if (mouse_check_button_released(mb_left)) {
		global.in_shop = true;
		visible = false;
	}
} else {
	image_index = 0;
	visible = true;
	x = 23;
	y = 548;
}

if (global.in_shop) {
	visible = false;
	x = -1000;
	y = -1000;
}





