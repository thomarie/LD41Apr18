/// @description Increase Time

if (count_up == true)
{
	seconds += 1/room_speed;	//increment seconds by 1 every realtime second
}

// if seconds hits around 60...
if (seconds < 60) and (seconds > 59.9)
{
	seconds = 0;
	minutes += 1;
}

// if minutes hits 60...
if minutes = 60
{
	minutes = 0;
	hours += 1;
}


