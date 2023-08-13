phy_angular_velocity = 0
phy_linear_velocity_x /= 5
phy_linear_velocity_y /= 5
if instance_exists(obj_respawn_point)
{
    phy_position_x = obj_respawn_point.x
    phy_position_y = obj_respawn_point.y
}
else
{
    phy_position_x = room_width/2
    phy_position_y = room_height/2
}
audio_play_sound(snd_playerdeath,0,0)


