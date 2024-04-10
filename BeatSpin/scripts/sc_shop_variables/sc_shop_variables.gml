// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.in_shop = true;

function button_feedback(object) {
	if (mouse_check_button_released(mb_left) && mouse_x > object.x && mouse_x < object.x+object.sprite_width 
	&& mouse_y > object.y && mouse_y < object.y+object.sprite_height) {
		return "released";
	}
	
	if (mouse_check_button(mb_left) && mouse_x > object.x && mouse_x < object.x+object.sprite_width
	&& mouse_y > object.y && mouse_y < object.y+object.sprite_height) {
		return "pressed";
	}
	
	if (mouse_x > object.x && mouse_x < object.x+object.sprite_width
	&& mouse_y > object.y && mouse_y < object.y+object.sprite_height) {
		return "hovering";
	} else {
		return "";
	}
}
	

