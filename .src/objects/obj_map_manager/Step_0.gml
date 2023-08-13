for (var i = 0; i < array_length(objects_with_gravity); i++) 
{
    with(i)
    {
        if phy_active
        {
            physics_apply_force(phy_com_x,phy_com_y,0,2000)
        }
    }
}