/// @description Step for parent for all buttons

// is mouse hovering?
hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
// when left mouse released call function
if (mouse_check_button_released(mb_left)) 
{
	if (hovering) 
	{
		//audio_play_sound(snd_button, 1, false);
		activate_button();
	}
} 
// on hovering change text color
if (hovering) 
{
	text_color = c_blue;
} 
else 
{
	text_color = c_black;
} 