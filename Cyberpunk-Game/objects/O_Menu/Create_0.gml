/// @description GUI/Vars/Menu

audio_group_stop_all(audiogroup_default);

audio_play_sound(SND_SpaghettiWestern,1,1)

global.HasPreviousStats = false;
global.HPPersist = -1;
global.AmmoPersist = -1
global.ReservePersist = -1

window_set_size(1920,1080);
window_enable_borderless_fullscreen(true);
window_set_fullscreen(true);

gui_width = display_get_gui_width();
gui_height= display_get_gui_height();
gui_margin = 32;

menu_x = gui_width+200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[3] = "New Game";
menu[2] = "Controls";
menu[1] = "Credits";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;