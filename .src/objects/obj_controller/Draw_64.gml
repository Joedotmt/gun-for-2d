
//d/aw_set_font(fnt_testing)
//draw_text(0,0, fps_real)
draw_text(0,30, fps)

//if locked
//{
//    if string_length(keyboard_string) > 6
//    {
//        keyboard_string = string_copy(keyboard_string, 1, 6);
//    }
//    draw_set_color(c_black)
//    draw_circle(0,0,10000,false)
//    draw_set_color(c_white)
//    draw_text_transformed(30,50,"Enter dev code: " + string(keyboard_string) + "_",2,2,0)
//    if keyboard_string == "PaSs12"
//    {
//        locked = false
//    }
//}
/*
if __game_won
{
	var _prev = draw_get_color()
	draw_set_color(c_white)
	draw_sprite_stretched(spr_finish, 0, GUIW*0.05, GUIH*0.5-100, GUIW*0.9, 200)
	draw_set_color(__win_color)
	draw_text_scribble(GUIW/2,GUIH/2, "[wave][fa_middle][fa_center]"+__win_text)
	draw_set_color(_prev)
}