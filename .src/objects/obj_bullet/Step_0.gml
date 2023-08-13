x += lengthdir_x(50, direction);
y += lengthdir_y(50, -direction);

if place_meeting(x,y,obj_collider)
{
	instance_destroy()
}