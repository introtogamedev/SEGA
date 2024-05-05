//open shop
if (keyboard_check_pressed(shop_key) && !obj_note_manager.playing)
{
	if (!global.in_shop) obj_speech_bubble.random_dia = irandom(2);
	global.in_shop = true;
}


if (global.in_shop) {
	visible = true;
	x = 66;
	y = 560;
	cooldown_timer--;
	if (cooldown_timer <= 0) {
		if (button_feedback(obj_back) == "released") {
			global.in_shop = false;
			audio_play_sound(snd_button_press,1,false);
			image_index = 0;
		}
		else if (button_feedback(obj_back) == "pressed") {
			image_index = 2;
		}
		else if (button_feedback(obj_back) == "hovering") {
			image_index = 1;
		} else {
			image_index = 0;
		}
	}
} else {
	visible = false;
	x = 5000;
	y = 5000;
	cooldown_timer = 10;
}





