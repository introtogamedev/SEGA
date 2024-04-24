if (!global.note_hit) draw_set_alpha(0);
else draw_set_alpha(1);

if (timer < 60)
{	
	timer ++;
	draw_set_alpha((60 - timer) / 60);
	placement -= 0.5;
}
if (timer >= 60) 
{
	//draw_set_alpha(0);
	global.note_hit = false;
}

draw_set_halign(fa_center);
draw_set_color(c_yellow);
draw_set_font(fnt_casino_fancy);

draw_text_transformed(room_width/2, placement, "COMBO", 4, 4, 0);
draw_text_transformed(room_width/2, placement + 50 + 7, global.combo, 6, 6, 0);

draw_set_color(c_maroon);
draw_text_transformed(room_width/2, placement, "COMBO", 4, 4, 0);
draw_text_transformed(room_width/2, placement + 50, global.combo, 6, 6, 0);



draw_set_alpha(1);