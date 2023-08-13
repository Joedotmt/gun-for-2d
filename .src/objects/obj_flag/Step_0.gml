if physics_test_overlap(phy_position_x,phy_position_y,phy_rotation,obj_player)
{
	if !picked_up
	{
		audio_play_sound(snd_capture,0,0)
	}
    picked_up = true
}
if physics_test_overlap(phy_position_x,phy_position_y,phy_rotation,obj_finish)
{
	instance_destroy()
	obj_controller.game_win(c_blue, "Blue team won")
}
if picked_up
{
    image_index = 1
    phy_angular_velocity = 0
    if !instance_exists(obj_player) 
    {
        phy_position_x = obj_respawn_point.x
        phy_position_y = obj_respawn_point.y
    }
    phy_linear_damping = 1
    phy_angular_damping = 1
    if time_picked_up < 900
    {
        time_picked_up *= 1.4
        phy_rotation = lerp(phy_rotation,0,time_picked_up/1000)
    } 
    else 
    {
        phy_rotation = point_direction(phy_position_x,phy_position_y*-1,mouse_x,mouse_y*-1)
        if (phy_rotation < 270 && phy_rotation > 90)
        {
            image_yscale = -abs(image_yscale)
        }
        else
        {
            image_yscale = abs(image_yscale)    
        }
    }
    physics_apply_force(x,y,-(x - obj_player.x)*time_picked_up,-(y - obj_player.y)*time_picked_up)
    phy_angular_velocity = 0
    if changed_gun_state == false
    {
        physics_remove_fixture(id, bound_fix)
        make_phy(-1)
        physics_fixture_set_collision_group(fixture, -1)
        changed_gun_state = true
    }
    phy_linear_velocity_x *= 0.5
    phy_linear_velocity_y *= 0.5
} 
else
{
    image_index = 0
}
