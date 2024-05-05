//coin rain thing
win = false;

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

	if (file_exists(_file_name+".bsp")) {
		var _file = file_text_open_read(_file_name+".bsp");
		//show_debug_message(_file_name);
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
		//show_debug_message("File Missing");
	}

}

//Play the song and set other variables

Metamorphose = {
	song_name: Laur_Metamorphose,
	easy: "metamorphose/metamorphose-easy",
	medium: "metamorphose/metamorphose-medium",
	hard: "metamorphose/metamorphose-hard",
	expert: "metamorphose/metamorphose-expert"
};

Anemone = {
	song_name: SCU_anemone,
	easy: "anemone/anemone-easy",
	medium: "anemone/anemone-medium",
	hard: "anemone/anemone-hard",
	expert: "anemone/anemone-expert"
};


song_data = Metamorphose;


function start_song(_difficulty) {
	switch (_difficulty) {
		case 1:
			song = audio_play_sound(song_data.song_name,1,false);
			process_notes(song_data.easy);
			difficulty = 0;
			
		break;
		case 2:
			song = audio_play_sound(song_data.song_name,1,false);
			process_notes(song_data.medium);
			difficulty = 1;
			
		break;
		case 3:
			song = audio_play_sound(song_data.song_name,1,false);
			process_notes(song_data.hard);
			difficulty = 2;

			
		break;
		case 4:
			song = audio_play_sound(song_data.song_name,1,false);
			process_notes(song_data.expert);
			difficulty = 3;
				
		break;
	}
	my_my_score = my_score;
	leeway = 3000; //Makes sure notes aren't missed by the creatpr;
	playing = true;
}


my_score = 0;
my_my_score = 0;
playing = false;
song = pointer_null;

end_song = false;
