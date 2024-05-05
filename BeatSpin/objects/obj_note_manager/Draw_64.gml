/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_left);

draw_set_font(fnt_casino_fancy);
draw_text_transformed(15,30,"$" + string(global.money+my_score),0.7,0.7,0);

//show_debug_message(my_score - my_my_score);
//end
if (end_song) {
	var _placement = room_height/2 - 70;
	draw_set_halign(fa_center);
	
	
	draw_set_color(c_yellow);
	draw_set_font(fnt_casino_fancy);

	draw_text_transformed(room_width/2, _placement + 2, "You earned:", 1, 1, 0);
	draw_text_transformed(room_width/2, _placement + 60 + 2, "$" + string(my_my_score) + "!", 1.5, 1.5, 0);
	
	draw_set_color(c_maroon);
	draw_text_transformed(room_width/2, _placement - 4, "You earned:", 1, 1, 0);
	draw_text_transformed(room_width/2, _placement + 60 - 4, "$" + string(my_my_score) + "!", 1.5, 1.5, 0);

}

