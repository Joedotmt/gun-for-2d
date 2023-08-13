if instance_exists(obj_player)
{
	camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - camera_get_view_height(view_camera[0])/2)
	
	var _pos_x = lerp(obj_player.x, mouse_x, 0.4)
	var _pos_y = lerp(obj_player.y, mouse_y, 0.5)

	x = lerp(x, _pos_x, 0.2)
	y = lerp(y, _pos_y, 0.2)

	//if mouse_wheel_up()
	//	target_zoom_amount *= 0.9
	//if mouse_wheel_down()
	//	target_zoom_amount *= 1.1
	
	zoom_amount = lerp(zoom_amount, target_zoom_amount, 0.2)
}
