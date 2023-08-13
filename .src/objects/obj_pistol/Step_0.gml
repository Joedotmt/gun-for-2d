if picked_up
{
    if time_picked_up < 1800
    {
        time_picked_up *= 1.5
        phy_rotation = lerp(phy_rotation,0,time_picked_up/1000)
    } 
    else 
    {
        phy_rotation = point_direction(phy_com_x,phy_com_y*-1,mouse_x,mouse_y*-1)
    }
    physics_apply_force(phy_com_x, phy_com_y,-(phy_com_x - obj_player.phy_com_x)*time_picked_up,-(phy_com_y - obj_player.phy_com_y)*time_picked_up)
    phy_angular_velocity = 0
    if changed_gun_state == false
    {
        physics_remove_fixture(id, bound_fix)
		physics_fixture_bind(make_phy(-1), id)
        changed_gun_state = true
    }
    phy_linear_velocity_x *= 0.5
    phy_linear_velocity_y *= 0.5
}