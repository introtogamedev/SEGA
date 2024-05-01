/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_right);

draw_set_font(fnt_casino);
draw_text_transformed(room_width-50,50,"$" + string(global.money+my_score),3,3,0);

//show_debug_message(my_score - my_my_score);
//end
if (end_song) {
	var _placement = room_height/2 - 50;
	draw_set_halign(fa_center);
	
	
	draw_set_color(c_yellow);
	draw_set_font(fnt_casino_fancy);

	draw_text_transformed(room_width/2, _placement + 4, "You earned:", 1, 1, 0);
	draw_text_transformed(room_width/2, _placement + 50 + 4, "$" + string(my_my_score) + "!", 1.5, 1.5, 0);
	
	draw_set_color(c_maroon);
	draw_text_transformed(room_width/2, _placement - 4, "You earned:", 1, 1, 0);
	draw_text_transformed(room_width/2, _placement + 50 - 4, "$" + string(my_my_score) + "!", 1.5, 1.5, 0);

}

