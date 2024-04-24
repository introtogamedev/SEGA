//Save money

global.money += my_score;
my_score = 0;

if (file_exists(working_directory + "save.txt")) {
	file_delete(working_directory + "save.txt");
}
var _file = file_text_open_write(working_directory + "save.txt");
file_text_write_string(_file, global.money);
file_text_close(_file);


