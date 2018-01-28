if(point_in_rectangle(mouse_x, mouse_y, x, y, x + 64, y + 32))
{
	if(mouse_check_button_pressed(mb_left))
	{
		image_index = (image_index + 1) % image_number;
		selected = !selected;
	}
}