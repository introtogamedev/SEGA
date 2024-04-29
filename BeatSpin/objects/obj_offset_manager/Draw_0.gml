draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_casino);

if (keyboard_check(increase_offset) || keyboard_check(decrease_offset))
{
	timer = 0;
}

if (timer < 60)
{
	//positive offset
	if (display_offset >= 0) draw_text_transformed(10,10,"Offset: " + string(display_offset) + "ms",1,1,0);
	//show_debug_message(global.offset);
	/*
	//negative offset
	else draw_text_transformed(10,10,"Offset: " + string(display_offset) + "ms",1,1,0);
	*/
}