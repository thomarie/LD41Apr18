/// @description 



//text style of the scores

draw_set_color(c_white); //text white
draw_text(600, 30, "Diamonds Collected:");
draw_text(800, 30, global.diamonds);
draw_text(820, 30, "  / 50");	//change this number once game is finished
draw_set_font(fnt_small);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

