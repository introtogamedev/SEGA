//Draw notes

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
}

