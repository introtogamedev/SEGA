//Draw self and text

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_casino_fancy);

switch (purpose) {
	
	
	
	case "resume":
		draw_text_transformed(x,y,"Resume",0.8,0.8,0);
	break;
		
	case "restart":
		draw_text_transformed(x,y,"Restart",0.8,0.8,0);
	break;
		
	case "leave":
		draw_text_transformed(x,y,"Exit",0.8,0.8,0);
	break;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
