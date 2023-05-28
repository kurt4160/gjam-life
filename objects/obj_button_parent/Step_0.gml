/// @description Step for parent for all buttons

// is mouse hovering?
hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
 
// on hovering change text color
if (hovering) 
{
	text_color = c_blue;
} 
else 
{
	text_color = c_black;
} 