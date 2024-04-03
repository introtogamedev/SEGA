/// @description Insert description here
// You can write your code in this editor

//show_debug_message("");

if (pull_lever() && state != -1)
{

	
	if (mouse_y_start_pos == 0) mouse_y_start_pos = mouse_y;
	
	if (mouse_y <= mouse_y_start_pos+100) {image_index = 0; state = 0;}
	if (mouse_y > mouse_y_start_pos+100 && mouse_y <= mouse_y_start_pos+200) {image_index = 1; state = 1;}
	if (mouse_y > mouse_y_start_pos+200 && mouse_y <= mouse_y_start_pos+300) {image_index = 2; state = 2;}
	if (mouse_y > mouse_y_start_pos+300 && mouse_y <= mouse_y_start_pos+400) {image_index = 3; state = 3;}
	if (mouse_y > mouse_y_start_pos+400) {image_index = 4; state = 4;}
}

if (mouse_check_button_released(mb_left) && state != -1)
{
	image_index = 0;
	if (state > 0) {
		obj_note_manager.start_song(state);
		state = -1;
	} else {
		state = 0;	
	}
}




