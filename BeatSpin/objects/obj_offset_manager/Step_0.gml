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


if (global.offset > max_offset) global.offset = 300;
if (global.offset < min_offset) global.offset = -300;