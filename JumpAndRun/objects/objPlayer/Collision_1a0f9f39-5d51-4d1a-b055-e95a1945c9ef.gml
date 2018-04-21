/// @description 


draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white); //text white
draw_set_font(fnt_small);


if (objScore.count_up == true)
{
		objScore.count_up = false;
		global.seconds = objScore.seconds; //This should grab the value of obj_score's seconds and store them
		global.minutes = objScore.minutes; //This should grab the value of obj_score's minutes and store them
		global.hours = objScore.hours;		//This should grab the value of obj_score's hours and store them
}

if (get_name == true)
{
	name = get_string_async("Enter Your Name:", "enter name")
	get_name = false;
} 

// Don't think i will need the next 4 lines due to leaderboard
//	draw_set_halign(fa_bottom);
//	draw_set_valign(fa_middle);
//	draw_set_font(fnt_small);
//	draw_text(room_width/2, room_height/2 +50, "press R to restart");