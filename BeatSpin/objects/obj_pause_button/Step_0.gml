//Disappear if not paused

if (!global.is_paused) {
	visible = false;
} else {
	visible = true;
}

if (mouse_x > (x-(1*sprite_width)/2) && mouse_x < (x+(1*sprite_width)/2) && mouse_y > (y-(1*sprite_width)/2) && mouse_y < (y+(1*sprite_width)/2)) 
{
	image_alpha = 1;
}
else image_alpha = 0.85;


if (visible && position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)) {
	if (!audio_is_playing(snd_pause_no)) audio_play_sound(snd_pause_no,1,false);
	do_something();
}

