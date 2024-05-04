/// @description Insert description here
// You can write your code in this editor
#macro BUTTON obj_metamorphosebutton

if (global.in_shop) {
	visible = false;
	x = -1000;
	y = -1000;
} else {
	visible = true;
	x = 29;
	y = 339;
}

if (obj_note_manager.song_data == obj_note_manager.Anemone) {
	image_index = 0;
	if (mouse_check_button_released(mb_left) && mouse_x > BUTTON.x && mouse_x < BUTTON.x+BUTTON.sprite_width 
	&& mouse_y > BUTTON.y && mouse_y < BUTTON.y+BUTTON.sprite_height) {
		obj_note_manager.song_data = obj_note_manager.Metamorphose;
	}
} else {
	image_index = 1;
}




