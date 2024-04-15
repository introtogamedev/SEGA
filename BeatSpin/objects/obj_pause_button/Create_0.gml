//Do correct action based on purpose

function do_something() {

	switch (purpose) {
		case "resume":
			global.is_paused = false;
			audio_resume_sound(obj_note_manager.song);
		break;
		
		case "restart":
			global.is_paused = false;
			audio_resume_sound(obj_note_manager.song);
			audio_sound_set_track_position(obj_note_manager.song,0)
		break;
		
		case "leave":
			global.is_paused = false;
			obj_lever.state = 0;
			obj_note_manager.playing = false;
	
			global.combo_multiplier = 1; //remove combo multiplier
			global.combo = 0; //reset combo
	
			global.money += my_score;
		break;
	}

}



