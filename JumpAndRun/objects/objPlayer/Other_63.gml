/// @description Get Time & Name for Leaderboard

// this check the score (time) and compares it to what is already in the leaderboard and then bumps the other times up or dowen if needed

var time = (global.seconds + (global.minutes * 60) + (global.hours * 3600));
var i_d = ds_map_find_value(async_load, "id");

if i_d == name
{
	if ds_map_find_value(async_load, "status")
	{
		if ds_map_find_value(async_load, "result") != ""
		{
			global.Name = ds_map_find_value(async_load, "result");
			
			ini_open("scores.ini")
			for (i = 0; i < 10; i++)
			{
				global.score_array [i, 0] = ini_read_string(string(i), "Name", "unknown");
				global.score_array [i, 1] = ini_read_real(string(i), "Time", 99999);
			}
			ini_close();
			
			for (i = 0; i < 10; i++)
			{
				if (time < global.score_array [i, 1])
				{
					for (j = 9; j > i; j--)
					{
						global.score_array [j, 0] = global.score_array [j - 1, 0];
						global.score_array [j, 1] = global.score_array [j - 1, 1];
					}
					
					global.score_array [i, 0] = global.Name;
					gloabal.score_array [i, 1] = time;
					break;
				}
			}
			
			//now update ini with this array
			ini_open("scores.ini")
			for (i = 0; i < 10; i++)
			{
				//ini_write_real
				ini_write_string(string(i), "Name", global.score_array [i, 0]);
				ini_write_real(string(i), "Time", global.score_array [i, 1]);
			}
			ini_close();
			
			room_goto(rm_scores);
		}
	}
	else
	{
		game_end();
	}
}
			
			
			
			
			
			
