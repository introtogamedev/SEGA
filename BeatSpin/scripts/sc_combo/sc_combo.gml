function sc_combo(){
	//if perfect
	global.combo ++;
	obj_note_manager.my_score += 10 + (global.combo)/2;
	obj_note_manager.my_score = int64(obj_note_manager.my_score);
}