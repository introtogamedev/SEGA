//Disappear if not paused

if (!global.is_paused) {
	visible = false;
} else {
	visible = true;
}



if (visible && position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)) {
	do_something();
}

