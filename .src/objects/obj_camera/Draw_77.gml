view_set_wport(0,window_get_width())
view_set_hport(0,window_get_height())
display_set_gui_size(window_get_width()/window_get_height()*900,900);
camera_set_view_size(view_camera[0],window_get_width()/window_get_height()*global.cam_size*zoom_amount*speed_zoom,global.cam_size*zoom_amount*speed_zoom);
if window_get_height() > 128 && window_get_width() > 128
{
    surface_resize(application_surface,window_get_width(),window_get_height())
}