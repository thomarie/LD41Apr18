/// @description 
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white); //text white
draw_set_font(fnt_small);

//all below 10
if (hours < 10) and (minutes < 10) and (seconds < 10) {		
	draw_text(64,32,"0"+string(hours)+":0"+string(minutes)+":0"+string(seconds));

//hrs & mins below 10
} else if (hours < 10) and (minutes < 10) {		
	draw_text(64,32,"0"+string(hours)+":0"+string(minutes)+":"+string(seconds));

//hrs & secs below 10
} else if (hours < 10) and (seconds < 10) {		
	draw_text(64,32,"0"+string(hours)+":"+string(minutes)+":0"+string(seconds));

//mins & secs below 10
} else if (minutes < 10) and (seconds < 10) {		
	draw_text(64,32,string(hours)+":0"+string(minutes)+":0"+string(seconds));

//hrs below 10
} else if (hours < 10) {		
	draw_text(64,32,"0"+string(hours)+":"+string(minutes)+":"+string(seconds));

//mins below 10
} else if (minutes < 10) {		
	draw_text(64,32,string(hours)+":0"+string(minutes)+":"+string(seconds));

//secs below 10
} else if (seconds < 10) {		
	draw_text(64,32,string(hours)+":"+string(minutes)+":0"+string(seconds));
	
//all above 10
} else {
	draw_text(64,32,string(hours)+":"+string(minutes)+":"+string(seconds));

}  
