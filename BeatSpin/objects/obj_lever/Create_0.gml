/// @description Insert description here
// You can write your code in this editor

image_index = 0;
image_speed = 0;


mouse_y_start_pos = 0;

state = 0;


function pull_lever(){
	if (mouse_check_button(mb_left) && mouse_x > obj_lever.x && mouse_x < obj_lever.x+obj_lever.sprite_width
	&& mouse_y > obj_lever.y && mouse_y < obj_lever.y+obj_lever.sprite_height)
	{
		return true;
	} else {
		return false;
	}
}

holding = false;