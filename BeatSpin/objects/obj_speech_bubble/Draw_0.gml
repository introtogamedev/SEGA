draw_self();
draw_set_color(c_black);
draw_set_font(fnt_casino);

var _size = 2;
var _width = 280

if (global.money >= 0 && global.money < rich_money)
{
	draw_set_color(c_black);
	draw_text_ext_transformed(x+20,y+50,obj_mascot.default_dialogue[random_dia],-1,sprite_width - _width,_size,_size,0);
}
else if (global.money >= rich_money)
{
	draw_set_color(c_black);
	draw_text_ext_transformed(x+20,y+50,obj_mascot.good_dialogue[random_dia],-1,sprite_width - _width,_size,_size,0);
}
else if (global.money < 0)
{
	draw_set_color(c_red);
	draw_text_ext_transformed(x+20,y+50,obj_mascot.bad_dialogue[random_dia],-1,sprite_width - _width,_size,_size,0);
}