if (obj_note_manager.end_song && obj_note_manager.win) {
	
	show_debug_message("ended");
	
	timer ++;
	if (timer >= 5 )
	{
		instance_create_layer(random_number, -20, "coins", obj_coin);
		random_number = irandom_range(0, room_width);
		timer = 0;
	}
}
