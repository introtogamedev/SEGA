//Save money

global.money += my_score;
my_score = 0;

if (playing) {
	if (global.thick_line) {
		global.thick_line = false;
	}
	global.combo_mult = 1;
}


if (file_exists(working_directory + "save.txt")) {
	file_delete(working_directory + "save.txt");
}
var _file = file_text_open_write(working_directory + "save.txt");
file_text_write_string(_file, global.money);
file_text_write_string(_file, "\n");
file_text_write_string(_file, global.offset);
file_text_write_string(_file, "\n");
file_text_write_string(_file, global.thick_line);
file_text_write_string(_file, "\n");
file_text_write_string(_file, global.combo_mult);
file_text_write_string(_file, "\n");
file_text_write_string(_file, global.song_bought);
file_text_close(_file);


