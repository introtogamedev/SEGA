if (keyboard_check(increase_offset) || keyboard_check(decrease_offset))
{
	timer = 0;
}

if (timer < 60)
{
	if (global.offset >= 0) draw_text_transformed(10,10,"Offset: +" + string(global.offset) + "ms",1,1,0);
	else draw_text_transformed(10,10,"Offset: " + string(global.offset) + "ms",1,1,0);
}