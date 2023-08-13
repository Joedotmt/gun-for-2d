draw_set_font(fnt_testing)
draw_text(0,0, fps_real)
draw_text(0,50, fps)
draw_set_font(fnt_game)
var _pos_left = GUIW-20
draw_sprite_ext(spr_gui_jets_empty,0, _pos_left,GUIH-40,0.5,0.5,0,c_white,1)
draw_sprite_ext(spr_gui_jets_full,0, _pos_left-sprite_get_width(spr_gui_jets_full)/2,GUIH-40,0.5*boost_power_left/100,0.5,0,c_white,1)