/// @description Insert description here
// You can write your code in this editor
#macro OBJECT obj_anemonebutton

if (global.in_shop) {
	visible = false;
	x = -1000;
	y = -1000;
} else {
	visible = true;
	x = 29;
	y = 439;
}

//show_debug_message(global.song_bought);

if (global.song_bought) {
	if (obj_note_manager.song_data == obj_note_manager.Metamorphose) {
		image_index = 0;
		if (mouse_check_button_released(mb_left) && mouse_x > OBJECT.x && mouse_x < OBJECT.x+OBJECT.sprite_width 
		&& mouse_y > OBJECT.y && mouse_y < OBJECT.y+OBJECT.sprite_height) {
			audio_play_sound(snd_button_press,1,false);
			obj_note_manager.song_data = obj_note_manager.Anemone;
		}
		//show_debug_message("metamorphose selected");
	} else {
		image_index = 1;
	}
}


