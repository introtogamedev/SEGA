display_offset = global.offset - 300; //display offset defaults to 0
if (timer < 60) timer ++; 

if (keyboard_check_pressed(increase_offset))
{
	if (keyboard_check(vk_shift))
	{
		global.offset += 10;
	}
	else global.offset += 1;
}


if (keyboard_check_pressed(decrease_offset))
{
	if (keyboard_check(vk_shift))
	{
		global.offset -= 10;
	}
	else global.offset -= 1;
}


if (display_offset > max_offset) global.offset = 300 + 300; //+300 is the base offset
if (display_offset < min_offset) global.offset = 0 + 300; //+300 is the base offset

