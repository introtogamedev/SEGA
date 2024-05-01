/// @description Insert description here
// You can write your code in this editor

if (mouse_x > x && mouse_x < x+sprite_width && mouse_y > y && mouse_y < y+sprite_height) {
	image_index = 1;
	
	if (mouse_check_button_released(mb_left) && item_bought = false && obj_note_manager.my_score >= ITEM_COST) {
		item_bought = true;
		audio_play_sound(snd_kaching,1,false);
		obj_note_manager.my_score -= item_cost;
	}
} else {
	image_index = 0; 
}

if (item_bought) {
	image_index = 2;
}

if (global.in_shop) {
	visible = true;
	x = x_pos;
	y = y_pos;
} else {
	visible = false;
	x = -1000;
	y = -1000;
}