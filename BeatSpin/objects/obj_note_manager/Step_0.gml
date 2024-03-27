//Create Notes


//instance_create_layer(x+delta_time * 10,y,"notes",obj_notes);



//Set songposition
var _songposition = audio_sound_get_track_position(song)*1000  //in milliseconds

//Check for missed notes
if (!ds_queue_empty(column1) && _songposition - global.offset >= ds_queue_head(column1) + leeway) {
	ds_queue_dequeue(column1);
	my_score--;
	//miss
}
if (!ds_queue_empty(column2) && _songposition - global.offset >= ds_queue_head(column2) + leeway) {
	ds_queue_dequeue(column2);
	my_score--;
	//miss
}
if (!ds_queue_empty(column3) && _songposition - global.offset >= ds_queue_head(column3) + leeway) {
	ds_queue_dequeue(column3);
	my_score--;
	//miss
}
if (!ds_queue_empty(column4) && _songposition - global.offset >= ds_queue_head(column4) + leeway) {
	ds_queue_dequeue(column4);
	my_score--;
	//miss
}
if (!ds_queue_empty(column5) && _songposition - global.offset >= ds_queue_head(column5) + leeway) {
	ds_queue_dequeue(column5);
	my_score--;
	//miss
}
if (!ds_queue_empty(column6) && _songposition - global.offset >= ds_queue_head(column6) + leeway) {
	ds_queue_dequeue(column6);
	my_score--;
	//miss
}

//Check for presses
if (keyboard_check_pressed(ord("S")))
{
	if (!ds_queue_empty(column1) && _songposition + leeway - global.offset >= ds_queue_head(column1)) {
		ds_queue_dequeue(column1);
		my_score++;
		//hit
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("D")))
{
	if (!ds_queue_empty(column2) && _songposition + leeway - global.offset >= ds_queue_head(column2)) {
		ds_queue_dequeue(column2);
		my_score++;
		//hit
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("F")))
{
	if (!ds_queue_empty(column3) && _songposition + leeway - global.offset >= ds_queue_head(column3)) {
		ds_queue_dequeue(column3);
		my_score++;
		//hit
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("J")))
{
	if (!ds_queue_empty(column4) && _songposition + leeway - global.offset >= ds_queue_head(column4)) {
		ds_queue_dequeue(column4);
		my_score++;
		//hit
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("K")))
{
	if (!ds_queue_empty(column5) && _songposition + leeway - global.offset >= ds_queue_head(column5)) {
		ds_queue_dequeue(column5);
		my_score++;
		//hit
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("L")))
{
	if (!ds_queue_empty(column6) && _songposition + leeway - global.offset >= ds_queue_head(column6)) {
		ds_queue_dequeue(column6);
		my_score++;
		//hit
	} else {
		my_score--;
		//missclick
	}
}
