//Load money

if (file_exists(working_directory + "save.txt")) {
	var _file = file_text_open_read(working_directory + "save.txt");
	global.money = real(file_text_readln(_file));
	global.offset = real(file_text_readln(_file));
	global.thick_line = real(file_text_readln(_file));
	global.combo_mult = real(file_text_readln(_file));
	global.song_bought = real(file_text_readln(_file));
	file_text_close(_file);
} else {
	show_debug_message("File Missing");
}

show_debug_message(working_directory);