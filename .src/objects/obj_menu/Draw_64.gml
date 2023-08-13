draw_set_alpha(0.5)
draw_set_color(c_black)
draw_set_font(fnt_game)
draw_roundrect_ext(50,50,GUIW-50,GUIH-50,20,20,false)
draw_set_color(c_white)
draw_set_alpha(1)
draw_text_scribble(GUIW*0.5, GUIH*0.2, "[fa_middle][fa_center][wave][rainbow][scale, 1]gun for 2d")
draw_sprite(spr_button_title, 0, GUIW*0.5 - sprite_get_width(spr_button_title)/2, GUIH*0.5 - sprite_get_height(spr_button_title)/2)

var _fx = fx_get_parameter(layer_get_fx("Background"),"g_PanoramaDirection" )
fx_set_parameter(layer_get_fx("Background"), "g_PanoramaDirection", [_fx[0]+0.0005,_fx[1]])

if mouse_check_button_pressed(mb_left)
{
	room_goto(rm_play_1)
}