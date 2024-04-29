//Load money

if (file_exists(working_directory + "save.txt")) {
	var _file = file_text_open_read(working_directory + "save.txt");
	global.money = real(file_text_readln(_file));
	global.offset = real(file_text_readln(_file));
	file_text_close(_file);
} else {
	show_debug_message("File Missing");
}

show_debug_message(working_directory);