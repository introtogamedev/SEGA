//Disappear if not paused

if (!global.is_paused) {
	visible = false;
} else {
	visible = true;
}


//remove this
if (keyboard_check_pressed(vk_escape) && !global.is_paused) {
		global.is_paused = true;
}

if (visible && position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)) {
	do_something();
}

