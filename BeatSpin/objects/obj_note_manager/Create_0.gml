function process_notes(_file_name) {

//Get variables from BSP file

column1 = ds_queue_create();
column2 = ds_queue_create();
column3 = ds_queue_create();
column4 = ds_queue_create();
column5 = ds_queue_create();
column6 = ds_queue_create();

notes1 = ds_list_create();
notes2 = ds_list_create();
notes3 = ds_list_create();
notes4 = ds_list_create();
notes5 = ds_list_create();
notes6 = ds_list_create();

difficulty = 0;

if (file_exists(_file_name+".bsp")) { //this only works with one song
	var _file = file_text_open_read(_file_name+".bsp");
	show_debug_message(_file_name)
	while (!file_text_eof(_file)) {
		var _line = string_split(file_text_readln(_file),",");
		var _column = _line[0];
		if (_column == 1) {
			ds_queue_enqueue(column1,real(_line[1]));
		} else if (_column == 2) {
			ds_queue_enqueue(column2,real(_line[1]));
		} else if (_column == 3) {
			ds_queue_enqueue(column3,real(_line[1]));
		} else if (_column == 4) {
			ds_queue_enqueue(column4,real(_line[1]));
		} else if (_column == 5) {
			ds_queue_enqueue(column5,real(_line[1]));
		} else if (_column == 6) {
			ds_queue_enqueue(column6,real(_line[1]));
		}
	}
	file_text_close(_file);
} else {
	show_debug_message("File Missing");
}

}

//Play the song and set other variables

function start_song(_difficulty) {
	switch (_difficulty) {
		case 1:
				song = audio_play_sound(Laur_Metamorphose,1,false);
				process_notes("easy")
				difficulty = 0;
		break;
		case 2:
				song = audio_play_sound(Laur_Metamorphose,1,false);
				process_notes("normal")
				difficulty = 1;
		break;
		case 3:
				song = audio_play_sound(Laur_Metamorphose,1,false);
				process_notes("hard")
				difficulty = 2;
		break;
		case 4:
				song = audio_play_sound(Laur_Metamorphose,1,false);
				process_notes("impossible")
				difficulty = 3;
		break;
	}
	leeway = 3000; //Makes sure notes are missed by the creatpr;
	playing = true;
}


my_score = 0;
playing = false;
song = pointer_null;

