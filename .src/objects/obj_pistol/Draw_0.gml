var _x_cache = x
var _y_cache = y
x += lengthdir_x(64, image_angle);
//y += lengthdir_y(64,-phy_rotation);
if (phy_rotation < 270 && phy_rotation > 90)
{
    image_yscale = -abs(image_yscale)
	y += sprite_height
}
else
{
    image_yscale = abs(image_yscale)
}
draw_self()
x = _x_cache
y = _y_cache

//physics_draw_debug()

// draw_sprite_ext(spr_pistol, 0, x + 0, y + 0, image_xscale + 0, image_yscale + 0, obj_player.image_angle, $FFFFFF & $ffffff, 1);