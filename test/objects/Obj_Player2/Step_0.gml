//Get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("F"));
key_jump_held = keyboard_check(ord("F"));

//Calculate Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;


//Jumping
if (place_meeting(x,y+1,Obj_Block)) && (key_jump)
{
	vsp = -jumpsp
}


// Horizontal collision
if (place_meeting(x+hsp,y,Obj_Block))
{

	while (!place_meeting(x+sign(hsp),y,Obj_Block))
	{
		x = x + sign(hsp);
	}

	hsp = 0
}
x = x + hsp;


// Vertical collision
vsp += grv;
if(keyboard_check_pressed(ord("F")) && jump_current > 0)
{
    vsp = -jumpsp;
    jump_current--;
}

if(place_meeting(x, y + vsp, Obj_Block))
{
    while(!place_meeting(x, y + sign(vsp), Obj_Block))
    {
        y += sign(vsp);
    }
 
    if(vsp > 0)
    {
        jump_current = jump_number;
    }
 
    vsp = 0;
}
y += vsp;


// Wall jumping

if(key_jump && place_meeting(x, y + 1, Obj_Block))
{
vsp = -jumpsp
}

if(key_jump && place_meeting(x +1, y, Obj_Block))
{
vsp = -jumpsp
hsp = -2
}

if(key_jump && place_meeting(x -1, y, Obj_Block))
{
vsp = -jumpsp
hsp = +2
}


// presis jumping

if (vsp < 0) && (!key_jump_held)
{
vsp = max(0,-jumpsp/4)
}

// Shooting
if (keyboard_check_pressed(ord("G")))
{
 instance_create_layer(x,y,layer,Obj_Kunai)
}