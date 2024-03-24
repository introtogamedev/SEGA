// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pull_lever(){
	if (mouse_check_button(mb_left) && mouse_x > obj_lever.x && mouse_x < obj_lever.x+obj_lever.sprite_width
	&& mouse_y > obj_lever.y && mouse_y < obj_lever.y+obj_lever.sprite_height)
	{
		return true;
	} else {
		return false;
	}
}