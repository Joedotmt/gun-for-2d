if picked_up
{
    phy_linear_velocity_x -= lengthdir_x(6400,phy_rotation)
    phy_linear_velocity_y -= lengthdir_y(6400,-phy_rotation)
    phy_rotation += 50
    with instance_create_depth(phy_position_x + lengthdir_x(128,-image_angle), phy_position_y,20,obj_bullet)
    {
		direction = -other.image_angle
		image_angle = direction
    }
	audio_play_sound_at(snd_fire,x,y,0,30,50,60,0,0,0.2,0,random_range(0.9, 1.3))
	
	fx_set_parameter(layer_get_fx("shake_effect"), "g_Magnitude", 9)
	alarm_set(0, 3)
}