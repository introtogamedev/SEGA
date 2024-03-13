//Get variables from JSON file

column1 = ds_queue_create();
column2 = ds_queue_create();
column3 = ds_queue_create();
column4 = ds_queue_create();
column5 = ds_queue_create();
column6 = ds_queue_create();

if (file_exists(working_directory + "song.bsp")) { //this only works with one song
	var _file = file_text_open_read("song.bsp");
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
}

/*
if (ds_queue_size(column1) > 0) {
	show_debug_message("full");
}
while (ds_queue_size(column1) > 0) {
	show_debug_message(ds_queue_dequeue(column1));
}
show_debug_message("end");
*/