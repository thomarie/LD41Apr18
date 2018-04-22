 /// @description Get Time & Name for Leaderboard

if global.diamonds == 6 
{
	//room_goto_next()
//}


// this check the score (time) and compares it to what is already in the leaderboard and then bumps the other times up or dowen if needed

var time = (global.seconds + (global.minutes * 60) + (global.hours * 3600));

//listen for async dialog event
var i_d = ds_map_find_value(async_load, "id");

//if the dialog is the one where we ask the player for a name
if i_d == name
{
	if ds_map_find_value(async_load, "status")	//if the user clicked ok
	{
		if ds_map_find_value(async_load, "result") != ""
		{
			global.Name = ds_map_find_value(async_load, "result"); //get the name entered
			
			//open scores.ini - located at... D:\
			ini_open("scores.ini")
			for (i = 0; i < 10; i++)
			{
				//fill the global scores array with values from the ini file. If no values are present, then fill with blanks
				global.score_array [i, 0] = ini_read_string(string(i), "Name", "unknown");
				global.score_array [i, 1] = ini_read_real(string(i), "Time", 00000);
			}
			ini_close();
			
			//search for first spot where player's score is greater
			for (i = 0; i < 10; i++)
			{
				//if the player's score is greater than the spot in question
				if (time < global.score_array [i, 1])
				{
					//starting at the last element of the array, set each element to the one before it
					for (j = 9; j > i; j--)
					{
						global.score_array [j, 0] = global.score_array [j - 1, 0];
						global.score_array [j, 1] = global.score_array [j - 1, 1];
					}
					
					//now set the space to that of this player
					global.score_array [i, 0] = global.Name;
					global.score_array [i, 1] = time;
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
			ini_close();	//don't forget to close
			
			//go to the room where the high scores table is shown
			room_goto(rm_scores);
		}
	}
	else
	{
		game_end();
	}
}
}		
			
			
			
			
			
