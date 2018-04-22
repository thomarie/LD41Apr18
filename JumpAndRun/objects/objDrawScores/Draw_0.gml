 /// @description 

//placement of the scores array
xx = room_width/2 -  150;
yy = 100;

//text style of the scores
draw_set_font(fnt_small);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
col = make_color_rgb(183, 224, 31);
draw_set_color(col);



for (i = 0; i < 10; i++)
{
	hours = (global.score_array[i, 1] div 3600);
	minutes = (global.score_array[i, 1] div 60) - (hours * 60);
	seconds = global.score_array[i, 1] mod 60;	//mod gives the remainder of the divisions above
		
	yy += 45;
	
	draw_seconds = seconds;	// if don't want hundredths use draw_seconds = floor(seconds);
	
	draw_text(xx, yy, string(global.score_array[i, 0]));
	
	if (seconds <= 10) && (minutes < 10)
	{
		draw_text(xx + 200, yy, string(hours) + ":0" + string(minutes) + ":0" + string(draw_seconds));
	}
	else if (seconds >= 10) && (minutes >= 10)
	{
		draw_text(xx + 200, yy, string(hours) + ":" + string(minutes) + ":" + string(draw_seconds));
	}
	else if (seconds < 10) && (minutes >= 10)
	{
		draw_text(xx + 200, yy, string(hours) + ":" + string(minutes) + ":0" + string(draw_seconds));
	}
	else if (seconds >= 10) && (minutes < 10)
	{
		draw_text(xx + 200, yy, string(hours) + ":0" + string(minutes) + ":0" + string(draw_seconds));
	}
}
