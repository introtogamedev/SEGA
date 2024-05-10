/// @description Insert description here
// You can write your code in this editor

draw_self();

if (mouse_x > x && mouse_x < x+sprite_width && mouse_y > y && mouse_y < y+sprite_height) {
	draw_text_ext(x, y-30, item_desc + "Cost: " + string(item_cost), 15, sprite_width);

}




