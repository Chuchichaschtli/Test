//set up motion
if keyboard_check(cr_uparrow) == true
	{
	 += 0;
	}
direction = point_direction(x,y,mouse_x,mouse_y);
direction = direction + random_range(-4,4);
speed = 10;
image_angle = direction;

//kunai collision