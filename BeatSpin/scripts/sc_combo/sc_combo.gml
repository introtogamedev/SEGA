function sc_combo(){

	//if perfect
	global.note_hit = true;
	obj_combo_display.timer = 0;
	obj_combo_display.placement = 110;
	global.combo ++;
	obj_note_manager.my_score += 10 + (global.combo)/2;
	obj_note_manager.my_score = int64(obj_note_manager.my_score);
}