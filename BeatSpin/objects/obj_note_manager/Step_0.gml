///Set songposition
if (playing) {
var _songposition = audio_sound_get_track_position(song)*1000  //in milliseconds

///Create Notes

if (!ds_queue_empty(column1) && abs(_songposition - ds_queue_head(column1)) <= leeway) {
	var _note = instance_create_layer(228,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column1);
	ds_list_add(notes1,_note);
}
if (!ds_queue_empty(column2) && abs(_songposition - ds_queue_head(column2)) <= leeway) {
	var _note = instance_create_layer(388,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column2);
	ds_list_add(notes2,_note);
}
if (!ds_queue_empty(column3) && abs(_songposition - ds_queue_head(column3)) <= leeway) {
	var _note = instance_create_layer(548,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column3);
	ds_list_add(notes3,_note);
}
if (!ds_queue_empty(column4) && abs(_songposition - ds_queue_head(column4)) <= leeway) {
	var _note = instance_create_layer(708,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column4);
	ds_list_add(notes4,_note);
}
if (!ds_queue_empty(column5) && abs(_songposition - ds_queue_head(column5)) <= leeway) {
	var _note = instance_create_layer(868,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column5);
	ds_list_add(notes5,_note);
}
if (!ds_queue_empty(column6) && abs(_songposition - ds_queue_head(column6)) <= leeway) {
	var _note = instance_create_layer(1028,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column6);
	ds_list_add(notes6,_note);
}


/*
//Check for missed notes
if (!ds_list_empty(notes1) && _songposition >= notes1[|0].position + leeway) {
	var _remove = notes1[|0];
	ds_list_delete(notes1,0);
	instance_destroy(_remove);
	my_score--;
	//miss
}
if (!ds_list_empty(notes2) && _songposition >= notes2[|0].position + leeway) {
	var _remove = notes2[|0];
	ds_list_delete(notes2,0);
	instance_destroy(_remove);
	my_score--;
	//miss
}
if (!ds_list_empty(notes3) && _songposition >= notes3[|0].position + leeway) {
	var _remove = notes3[|0];
	ds_list_delete(notes3,0);
	instance_destroy(_remove);
	my_score--;
	//miss
}
if (!ds_list_empty(notes4) && _songposition >= notes4[|0].position + leeway) {
	var _remove = notes4[|0];
	ds_list_delete(notes4,0);
	instance_destroy(_remove);
	my_score--;
	//miss
}
if (!ds_list_empty(notes5) && _songposition >= notes5[|0].position + leeway) {
	var _remove = notes5[|0];
	ds_list_delete(notes5,0);
	instance_destroy(_remove);
	my_score--;
	//miss
}
if (!ds_list_empty(notes6) && _songposition >= notes6[|0].position + leeway) {
	var _remove = notes6[|0];
	ds_list_delete(notes6,0);
	instance_destroy(_remove);
	my_score--;
	//miss
}
*/


///Set note y values
var _offset = (global.offset - 300) * (480/400); //480/400 is the pixel/ms of the notes

for (var _i = 0; _i < ds_list_size(notes1); _i++) {
	notes1[|_i].y = 240 + (_songposition-notes1[|_i].position) * 480/400 - _offset;
}
for (var _i = 0; _i < ds_list_size(notes2); _i++) {
	notes2[|_i].y = 240 + (_songposition-notes2[|_i].position) * 480/400 - _offset;
}
for (var _i = 0; _i < ds_list_size(notes3); _i++) {
	notes3[|_i].y = 240 + (_songposition-notes3[|_i].position) * 480/400 - _offset;
}
for (var _i = 0; _i < ds_list_size(notes4); _i++) {
	notes4[|_i].y = 240 + (_songposition-notes4[|_i].position) * 480/400 - _offset;
}
for (var _i = 0; _i < ds_list_size(notes5); _i++) {
	notes5[|_i].y = 240 + (_songposition-notes5[|_i].position) * 480/400 - _offset;
}
for (var _i = 0; _i < ds_list_size(notes6); _i++) {
	notes6[|_i].y = 240 + (_songposition-notes6[|_i].position) * 480/400 - _offset;
}



/*
//Check for presses
if (keyboard_check_pressed(ord("S")))
{
	if (!ds_list_empty(notes1)) {
		var _index = -1;
		var _distance = leeway + 1
		for (var _i = 0; _i < ds_list_size(notes1); _i++) {
			if (abs(notes1[|_i].position - _songposition) < _distance) {
				_index = _i;
				_distance = abs(notes1[|_i].position - _songposition);
			}
		}
		if (_index != -1) {
			var _remove = notes1[|_index];
			ds_list_delete(notes1,_index);
			instance_destroy(_remove);
			my_score++;
			//hit
		} else {
			my_score--;
			//missclick
		}
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("D")))
{
	if (!ds_list_empty(notes2)) {
		var _index = -1;
		var _distance = leeway + 1
		for (var _i = 0; _i < ds_list_size(notes2); _i++) {
			if (abs(notes2[|_i].position - _songposition) < _distance) {
				_index = _i;
				_distance = abs(notes2[|_i].position - _songposition);
			}
		}
		if (_index != -1) {
			var _remove = notes2[|_index];
			ds_list_delete(notes2,_index);
			instance_destroy(_remove);
			my_score++;
			//hit
		} else {
			my_score--;
			//missclick
		}
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("F")))
{
	if (!ds_list_empty(notes3)) {
		var _index = -1;
		var _distance = leeway + 1
		for (var _i = 0; _i < ds_list_size(notes3); _i++) {
			if (abs(notes3[|_i].position - _songposition) < _distance) {
				_index = _i;
				_distance = abs(notes3[|_i].position - _songposition);
			}
		}
		if (_index != -1) {
			var _remove = notes3[|_index];
			ds_list_delete(notes3,_index);
			instance_destroy(_remove);
			my_score++;
			//hit
		} else {
			my_score--;
			//missclick
		}
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("J")))
{
	if (!ds_list_empty(notes4)) {
		var _index = -1;
		var _distance = leeway + 1
		for (var _i = 0; _i < ds_list_size(notes4); _i++) {
			if (abs(notes4[|_i].position - _songposition) < _distance) {
				_index = _i;
				_distance = abs(notes4[|_i].position - _songposition);
			}
		}
		if (_index != -1) {
			var _remove = notes4[|_index];
			ds_list_delete(notes4,_index);
			instance_destroy(_remove);
			my_score++;
			//hit
		} else {
			my_score--;
			//missclick
		}
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("K")))
{
	if (!ds_list_empty(notes5)) {
		var _index = -1;
		var _distance = leeway + 1
		for (var _i = 0; _i < ds_list_size(notes5); _i++) {
			if (abs(notes5[|_i].position - _songposition) < _distance) {
				_index = _i;
				_distance = abs(notes5[|_i].position - _songposition);
			}
		}
		if (_index != -1) {
			var _remove = notes5[|_index];
			ds_list_delete(notes5,_index);
			instance_destroy(_remove);
			my_score++;
			//hit
		} else {
			my_score--;
			//missclick
		}
	} else {
		my_score--;
		//missclick
	}
}
if (keyboard_check_pressed(ord("L")))
{
	if (!ds_list_empty(notes6)) {
		var _index = -1;
		var _distance = leeway + 1
		for (var _i = 0; _i < ds_list_size(notes6); _i++) {
			if (abs(notes6[|_i].position - _songposition) < _distance) {
				_index = _i;
				_distance = abs(notes6[|_i].position - _songposition);
			}
		}
		if (_index != -1) {
			var _remove = notes6[|_index];
			ds_list_delete(notes6,_index);
			instance_destroy(_remove);
			my_score++;
			//hit
		} else {
			my_score--;
			//missclick
		}
	} else {
		my_score--;
		//missclick
	}
}
*/
var _offscreen = 480 + 240

if (!ds_list_empty(notes1))
{
	//reset index and distance
	var _index = -1;
	var _distance = leeway + 1

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes1); _j++) {
		if (abs(notes1[|_j].y - obj_line.y) < global.framing) {
			_index = _j;
			_distance = abs(notes1[|_j].position - _songposition);
		}
	}
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("S")) && !ds_list_empty(notes1))
	{
		if (_index != -1)
		{
			sc_combo();
			var _remove = notes1[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes1,_index);
			instance_destroy(_remove);
			
			
		}
		//else my_score --;
	}
	//if note goes offscreen
	for (var _i = 0; _i < ds_list_size(notes1); _i++) {
		if (notes1[|_i].y > _offscreen) 
		{
			my_score -= 20;
			global.combo = 0;
			
			var _remove = notes1[|_i];
			ds_list_delete(notes1,_i);
			instance_destroy(_remove);
			_i --;
		}
	}
}

if (!ds_list_empty(notes2))
{
	//reset index and distance
	var _index = -1;
	var _distance = leeway + 1

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes2); _j++) {
		if (abs(notes2[|_j].y - obj_line.y) <  global.framing) {
			_index = _j;
			_distance = abs(notes2[|_j].position - _songposition);
		}
	}
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("D")) && !ds_list_empty(notes2))
	{
		if (_index != -1)
		{
			sc_combo(); //combo function
			
			var _remove = notes2[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes2,_index);
			instance_destroy(_remove);
		}
		//else my_score --;
	}
	//if note goes offscreen
	for (var _i = 0; _i < ds_list_size(notes2); _i++) {
		if (notes2[|_i].y > _offscreen) 
		{
			my_score -= 20;
			global.combo = 0;
			
			var _remove = notes2[|_i];
			ds_list_delete(notes2,_i);
			instance_destroy(_remove);
			_i --;
		}
	}
}


if (!ds_list_empty(notes3))
{
	//reset index and distance
	var _index = -1;
	var _distance = leeway + 1

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes3); _j++) {
		if (abs(notes3[|_j].y - obj_line.y) <  global.framing) {
			_index = _j;
			_distance = abs(notes3[|_j].position - _songposition);
		}
	}
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("F")) && !ds_list_empty(notes3))
	{
		if (_index != -1)
		{
			sc_combo(); //combo function
			var _remove = notes3[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			
			ds_list_delete(notes3,_index);
			instance_destroy(_remove);
		}
		//else my_score --;
	}
	//if note goes offscreen
	for (var _i = 0; _i < ds_list_size(notes3); _i++) {
		if (notes3[|_i].y > _offscreen)
		{
			my_score -= 20;
			global.combo = 0;
			
			var _remove = notes3[|_i];
			ds_list_delete(notes3,_i);
			instance_destroy(_remove);
			_i --;
		}
	}
}


if (!ds_list_empty(notes4))
{
	//reset index and distance
	var _index = -1;
	var _distance = leeway + 1

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes4); _j++) {
		if (abs(notes4[|_j].y - obj_line.y) <  global.framing) {
			_index = _j;
			_distance = abs(notes4[|_j].position - _songposition);
		}
	}
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("J")) && !ds_list_empty(notes4))
	{
		if (_index != -1)
		{
			sc_combo(); //combo function
			var _remove = notes4[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			
			ds_list_delete(notes4,_index);
			instance_destroy(_remove);
		}
		//else my_score --;
	}
	//if note goes offscreen
	for (var _i = 0; _i < ds_list_size(notes4); _i++) {
		if (notes4[|_i].y > _offscreen) 
		{
			my_score -= 20;
			global.combo = 0;
			
			var _remove = notes4[|_i];			
			ds_list_delete(notes4,_i);
			instance_destroy(_remove);
			_i --;
		}
	}
}


if (!ds_list_empty(notes5))
{
	//reset index and distance
	var _index = -1;
	var _distance = leeway + 1

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes5); _j++) {
		if (abs(notes5[|_j].y - obj_line.y) < global.framing) {
			_index = _j;
			_distance = abs(notes5[|_j].position - _songposition);
		}
	}
//if key pressed during time frame
	if (keyboard_check_pressed(ord("K")) && !ds_list_empty(notes5))
	{
		if (_index != -1)
		{
			sc_combo(); //combo function
			var _remove = notes5[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes5,_index);
			instance_destroy(_remove);
		}
		//else my_score --;
	}
	//if note goes offscreen
	for (var _i = 0; _i < ds_list_size(notes5); _i++) {
		if (notes5[|_i].y > _offscreen) 
		{
			my_score -= 20;
			global.combo = 0;
			
			var _remove = notes5[|_i];
			ds_list_delete(notes5,_i);
			instance_destroy(_remove);
			_i --;
		}
	}
}

if (!ds_list_empty(notes6))
{
	//reset index and distance
	var _index = -1;
	var _distance = leeway + 1

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes6); _j++) {
		if (abs(notes6[|_j].y - obj_line.y) <  global.framing) {
			_index = _j;
			_distance = abs(notes6[|_j].position - _songposition);
		}
	}
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("L")) && !ds_list_empty(notes6))
	{
		if (_index != -1)
		{
			sc_combo(); //combo function
			var _remove = notes6[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes6,_index);
			instance_destroy(_remove);
		}
		//else my_score --;
	}
	//if note goes offscreen
	for (var _i = 0; _i < ds_list_size(notes6); _i++) {
		if (notes6[|_i].y > _offscreen)
		{
			my_score -= 20;
			global.combo = 0;
			
			var _remove = notes6[|_i];
			ds_list_delete(notes6,_i);
			instance_destroy(_remove);
			_i --;
		}
	}
}

if (!audio_is_playing(song)) {
	obj_lever.state = 0;
	playing = false;
}

}

