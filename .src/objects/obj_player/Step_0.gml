phy_rotation = 0
image_xscale = 0.5
image_yscale = 0.5
var _collision_inst = instance_place(phy_position_x, phy_position_y, obj_pistol)
if _collision_inst != noone
{
	if !_collision_inst.picked_up
	{
		if holding_gun != noone
		{
			holding_gun.picked_up = false
		}
		else
		{
			holding_gun = _collision_inst.id
		}
	}
	_collision_inst.attached_player = id
	with (_collision_inst)
	{
		if !picked_up
		{
			audio_play_sound(snd_pickupgun,0,0, 0.3)
			picked_up = true
		}
	}
}

if (mouse_x < x)
{
	image_xscale *= -1
}
else
{
	image_xscale *= 1
}

var _axis_x_raw = (keyboard_check(ord("D")) | keyboard_check(vk_right)) - (keyboard_check(ord("A")) | keyboard_check(vk_left))

axis_x = lerp(axis_x, _axis_x_raw * 500,0.1)

phy_linear_velocity_x = axis_x

boost_power_left = clamp(boost_power_left, 0, 100)

if boost_power_left >= 1
{
    var _right = mouse_check_button(mb_right)
    boost_power_left -= 0.2 * _right
    physics_apply_local_force(0,0,0,-3000 * _right)
    if !audio_is_playing(snd_rocket) && _right
    {
        audio_play_sound(snd_rocket,0,0,0.5)
    }
    
    if !_right
    {
        audio_stop_sound(snd_rocket)
    }
}


if !mouse_check_button(mb_right)
{
	if physics_test_overlap(x, y, 0,obj_collider)
	{
		boost_power_left += 0.5
	}
	boost_power_left += 0.1
}

var _jump_pressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) ||  keyboard_check_pressed(ord("W"))

if physics_test_overlap(phy_position_x, phy_position_y+5, phy_rotation, obj_collider) && (_jump_pressed)
{
    phy_linear_velocity_y = -500
}

global.sharedProperties =
{
	_x : phy_position_x,
	_y : phy_position_y
}