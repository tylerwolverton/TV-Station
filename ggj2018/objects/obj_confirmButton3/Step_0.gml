if(point_in_rectangle(mouse_x, mouse_y, x, y, x + 64, y + 32))
{
	if(mouse_check_button_pressed(mb_left))
	{
		image_index = (image_index + 1) % image_number;
		
		var correctSelections = 0;
		with(obj_noneButton) correctSelections += selected ? 1 : 0;
		
		if(correctSelections == 1)
		{
			with(obj_ratings) curRatings += 25;
		}
		else
		{
			with(obj_ratings) curRatings -= 25;
		}
		
		with(obj_chivesButton) instance_destroy();
		with(obj_sourCreamButton) instance_destroy();
		with(obj_noneButton) instance_destroy();
		with(obj_confirmButton3) instance_destroy();
	}
}