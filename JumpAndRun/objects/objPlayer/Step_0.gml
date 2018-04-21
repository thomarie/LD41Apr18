/// @description Player Movement

//Get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//
if (place_meeting(x, y+1, objSolid)) && (key_jump)
{
	vsp = -15;
}

//Horizontal collision
if (place_meeting(x+hsp, y, objSolid))
{
	while (!place_meeting(x+sign(hsp), y, objSolid))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical collision
if (place_meeting(x, y+vsp, objSolid))
{
	while (!place_meeting(x, y+sign(vsp), objSolid))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp; 