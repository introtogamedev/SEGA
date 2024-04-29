//Draw notes
/*
var _songposition = audio_sound_get_track_position(song)*1000

if (!ds_queue_empty(column1) && abs(_songposition - ds_queue_head(column1)) <= leeway) {
	draw_sprite_ext(spr_notes,0,228,240 + (_songposition-ds_queue_head(column1)) * 480/400,2,2,0,c_white,1);
}

if (!ds_queue_empty(column2) && abs(_songposition - ds_queue_head(column2)) <= leeway) {
	draw_sprite_ext(spr_notes,0,388,240 + (_songposition-ds_queue_head(column2)) * 480/400,2,2,0,c_white,1);
}

if (!ds_queue_empty(column3) && abs(_songposition - ds_queue_head(column3)) <= leeway) {
	draw_sprite_ext(spr_notes,0,548,240 + (_songposition-ds_queue_head(column3)) * 480/400,2,2,0,c_white,1);
}

if (!ds_queue_empty(column4) && abs(_songposition - ds_queue_head(column4)) <= leeway) {
	draw_sprite_ext(spr_notes,0,708,240 + (_songposition-ds_queue_head(column4)) * 480/400,2,2,0,c_white,1);
}

if (!ds_queue_empty(column5) && abs(_songposition - ds_queue_head(column5)) <= leeway) {
	draw_sprite_ext(spr_notes,0,868,240 + (_songposition-ds_queue_head(column5)) * 480/400,2,2,0,c_white,1);
}

if (!ds_queue_empty(column6) && abs(_songposition - ds_queue_head(column6)) <= leeway) {
	draw_sprite_ext(spr_notes,0,1028,240 + (_songposition-ds_queue_head(column6)) * 480/400,2,2,0,c_white,1);
}(
*/

if (end_song) {
	var _placement = room_height/2 - 50;
	draw_set_halign(fa_center);
	draw_set_color(c_yellow);
	draw_set_font(fnt_casino);

	draw_text_transformed(room_width/2, _placement + 4, "You earned:", 4, 4, 0);
	draw_text_transformed(room_width/2, _placement + 50 + 4, "$" + string(my_score - my_my_score) + "!", 6, 6, 0);

}
