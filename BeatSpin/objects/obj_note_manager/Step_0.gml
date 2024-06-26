///Set songposition

if (playing && !global.is_paused) {
	

if (keyboard_check_pressed(vk_escape)) {
	audio_pause_sound(song);
	audio_play_sound(snd_pause,1,false);	
	global.is_paused = true;
}

	
var _songposition = audio_sound_get_track_position(song)*1000;  //in milliseconds

///Create Notes
if (!ds_queue_empty(column1) && abs(_songposition - ds_queue_head(column1) + global.offset) <= leeway) {
	var _note = instance_create_layer(228,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column1);
	ds_list_add(notes1,_note);
}
if (!ds_queue_empty(column2) && abs(_songposition - ds_queue_head(column2) + global.offset) <= leeway) {
	var _note = instance_create_layer(388,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column2);
	ds_list_add(notes2,_note);
}
if (!ds_queue_empty(column3) && abs(_songposition - ds_queue_head(column3) + global.offset) <= leeway) {
	var _note = instance_create_layer(548,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column3);
	ds_list_add(notes3,_note);
}
if (!ds_queue_empty(column4) && abs(_songposition - ds_queue_head(column4) + global.offset) <= leeway) {
	var _note = instance_create_layer(708,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column4);
	ds_list_add(notes4,_note);
}
if (!ds_queue_empty(column5) && abs(_songposition - ds_queue_head(column5) + global.offset) <= leeway) {
	var _note = instance_create_layer(868,0,"notes",obj_notes);
	_note.image_index = irandom(3);
	_note.image_xscale = 2;
	_note.image_yscale = 2;
	_note.position = ds_queue_dequeue(column5);
	ds_list_add(notes5,_note);
}
if (!ds_queue_empty(column6) && abs(_songposition - ds_queue_head(column6) + global.offset) <= leeway) {
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

var _note_speed_mult = 1;

if (difficulty = 0) _note_speed_mult = 2;
else if (difficulty = 1) _note_speed_mult = 1.5;
else if (difficulty = 2) _note_speed_mult = 1;
else if (difficulty = 3) _note_speed_mult = 0.8;

///Set note y values
var _note_speed = (480/400) / _note_speed_mult; // 480/400 is the base pixel/ms of the notes
var _spawn_y = (200 * _note_speed_mult);


for (var _i = 0; _i < ds_list_size(notes1); _i++) {
	notes1[|_i].y = _spawn_y + (_songposition-notes1[|_i].position) * _note_speed - (global.offset / _note_speed_mult)//_offset;
}
for (var _i = 0; _i < ds_list_size(notes2); _i++) {
	notes2[|_i].y = _spawn_y + (_songposition-notes2[|_i].position) * _note_speed - (global.offset / _note_speed_mult)//_offset;
}
for (var _i = 0; _i < ds_list_size(notes3); _i++) {
	notes3[|_i].y = _spawn_y + (_songposition-notes3[|_i].position) * _note_speed - (global.offset / _note_speed_mult)//_offset;
}
for (var _i = 0; _i < ds_list_size(notes4); _i++) {
	notes4[|_i].y = _spawn_y + (_songposition-notes4[|_i].position) * _note_speed - (global.offset / _note_speed_mult)//_offset;
}
for (var _i = 0; _i < ds_list_size(notes5); _i++) {
	notes5[|_i].y = _spawn_y + (_songposition-notes5[|_i].position) * _note_speed - (global.offset / _note_speed_mult)//_offset;
}
for (var _i = 0; _i < ds_list_size(notes6); _i++) {
	notes6[|_i].y = _spawn_y + (_songposition-notes6[|_i].position) * _note_speed - (global.offset / _note_speed_mult)//_offset;
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
var _offscreen = 736;

if (!ds_list_empty(notes1))
{
	//reset index and distance
	var _index = -1;
	var _distance = global.framing + 61;

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes1); _j++) {
		if (abs(notes1[|_j].y - obj_line.y) < _distance) {
			//perfect
			_index = _j;
			_distance = abs(notes1[|_j].y - obj_line.y);
		}
	}
	
	if (_distance < global.framing) {
		//perfect
		global.accuracy = 1;
	} else if (_distance < 60 + global.framing) {
		//great
		global.accuracy = 0.5;
	} else {
		//miss
		_index = -2;
	}
	
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("S")) && !ds_list_empty(notes1))
	{
		if (_index >= 0)
		{
			sc_combo(); //combo function
			var _remove = notes1[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes1,_index);
			instance_destroy(_remove);
		}
		else if (_index == -2)
		{
			//miss
			my_score -= 20;
			global.combo = 0;
		}
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
	var _distance = global.framing + 61;

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes2); _j++) {
		if (abs(notes2[|_j].y - obj_line.y) < _distance) {
			//perfect
			_index = _j;
			_distance = abs(notes2[|_j].y - obj_line.y);
		}
	}
	
	if (_distance < global.framing) {
		//perfect
		global.accuracy = 1;
	} else if (_distance < 60 + global.framing) {
		//great
		global.accuracy = 0.5;
	} else {
		//miss
		_index = -2;
	}
	
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("D")) && !ds_list_empty(notes2))
	{
		if (_index >= 0)
		{
			sc_combo(); //combo function
			var _remove = notes2[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes2,_index);
			instance_destroy(_remove);
		}
		else if (_index == -2)
		{
			//miss
			my_score -= 20;
			global.combo = 0;
		}
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
	var _distance = global.framing + 61;

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes3); _j++) {
		if (abs(notes3[|_j].y - obj_line.y) < _distance) {
			//perfect
			_index = _j;
			_distance = abs(notes3[|_j].y - obj_line.y);
		}
	}
	
	if (_distance < global.framing) {
		//perfect
		global.accuracy = 1;
	} else if (_distance < 60 + global.framing) {
		//great
		global.accuracy = 0.5;
	} else {
		//miss
		_index = -2;
	}
	
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("F")) && !ds_list_empty(notes3))
	{
		if (_index >= 0)
		{
			sc_combo(); //combo function
			var _remove = notes3[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes3,_index);
			instance_destroy(_remove);
		}
		else if (_index == -2)
		{
			//miss
			my_score -= 20;
			global.combo = 0;
		}
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
	var _distance = global.framing + 61;

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes4); _j++) {
		if (abs(notes4[|_j].y - obj_line.y) < _distance) {
			//perfect
			_index = _j;
			_distance = abs(notes4[|_j].y - obj_line.y);
		}
	}
	
	if (_distance < global.framing) {
		//perfect
		global.accuracy = 1;
	} else if (_distance < 60 + global.framing) {
		//great
		global.accuracy = 0.5;
	} else {
		//miss
		_index = -2;
	}
	
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("J")) && !ds_list_empty(notes4))
	{
		if (_index >= 0)
		{
			sc_combo(); //combo function
			var _remove = notes4[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes4,_index);
			instance_destroy(_remove);
		}
		else if (_index == -2)
		{
			//miss
			my_score -= 20;
			global.combo = 0;
		}
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
	var _distance = global.framing + 61;

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes5); _j++) {
		if (abs(notes5[|_j].y - obj_line.y) < _distance) {
			//perfect
			_index = _j;
			_distance = abs(notes5[|_j].y - obj_line.y);
		}
	}
	
	if (_distance < global.framing) {
		//perfect
		global.accuracy = 1;
	} else if (_distance < 60 + global.framing) {
		//great
		global.accuracy = 0.5;
	} else {
		//miss
		_index = -2;
	}
	
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("K")) && !ds_list_empty(notes5))
	{
		if (_index >= 0)
		{
			sc_combo(); //combo function
			var _remove = notes5[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes5,_index);
			instance_destroy(_remove);
		}
		else if (_index == -2)
		{
			//miss
			my_score -= 20;
			global.combo = 0;
		}
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
	var _distance = global.framing + 61;

	//check for closest note
	for (var _j = 0; _j < ds_list_size(notes6); _j++) {
		if (abs(notes6[|_j].y - obj_line.y) < _distance) {
			//perfect
			_index = _j;
			_distance = abs(notes6[|_j].y - obj_line.y);
		}
	}
	
	if (_distance < global.framing) {
		//perfect
		global.accuracy = 1;
	} else if (_distance < 60 + global.framing) {
		//great
		global.accuracy = 0.5;
	} else {
		//miss
		_index = -2;
	}
	
	//if key pressed during time frame
	if (keyboard_check_pressed(ord("L")) && !ds_list_empty(notes6))
	{
		if (_index >= 0)
		{
			sc_combo(); //combo function
			var _remove = notes6[|_index];
			
			instance_create_layer(_remove.x - 40,_remove.y + 40,"particles", obj_note_hit);
			
			ds_list_delete(notes6,_index);
			instance_destroy(_remove);
		}
		else if (_index == -2)
		{
			//miss
			my_score -= 20;
			global.combo = 0;
		}
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
	
	end_song = true;
	alarm[0] = game_get_speed(gamespeed_fps) * 10;
	
	if (global.thick_line) {
		global.thick_line = false;
	}
	global.combo_mult = 1
	
	if (my_score - my_my_score >= 0)	
	{
		win = true;
		audio_play_sound(snd_money,1,false);
	}
	
	else if (my_score - my_my_score < 0)
	{
		win = false;
		audio_play_sound(snd_money_lost,1,false);
	}
	
	//Set my_my_score to be used in Draw Gui
	my_my_score = my_score - my_my_score;
	
	obj_lever.state = 0;
	playing = false;
	
	global.combo_multiplier = 1; //remove combo multiplier
	global.combo = 0; //reset combo
	
	global.money += my_score;
	my_score = 0;
	
}
	
}

