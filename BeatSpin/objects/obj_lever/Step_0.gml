/// @description Insert description here
// You can write your code in this editor

//show_debug_message("");
var _current_state = state; 

obj_difficultytitles.visible = false;

if (pull_lever() && state != -1)
{
	
	if (mouse_y_start_pos == 0) mouse_y_start_pos = mouse_y;
	
	if (mouse_y <= mouse_y_start_pos+130) {
		image_index = 0; state = 0;	
	}
	
	if (mouse_y > mouse_y_start_pos+130 && mouse_y <= mouse_y_start_pos+260) {	
		image_index = 1; state = 1;	
		obj_difficultytitles.visible = true;
		obj_difficultytitles.image_index = 0;
	}
	
	if (mouse_y > mouse_y_start_pos+260 && mouse_y <= mouse_y_start_pos+390) {
		image_index = 2; state = 2;
		obj_difficultytitles.visible = true;
		obj_difficultytitles.image_index = 1;
	}
	
	if (mouse_y > mouse_y_start_pos+390 && mouse_y <= mouse_y_start_pos+520) {
		image_index = 3; state = 3;
		obj_difficultytitles.visible = true;
		obj_difficultytitles.image_index = 2;
	}
	
	if (mouse_y > mouse_y_start_pos+520) {
		image_index = 4; state = 4;
		obj_difficultytitles.visible = true;
		obj_difficultytitles.image_index = 3;
	}
}

if (state != _current_state)
{	
	audio_play_sound(snd_lever_pull,1,false);
}

if (mouse_check_button_released(mb_left) && state != -1)
{
	if (state != 0) audio_play_sound(snd_lever_release,1,false);
	image_index = 0;
	if (state > 0) {
		obj_note_manager.start_song(state);
		state = -1;
	} else {
		state = 0;	
	}
}




