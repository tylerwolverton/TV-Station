if(point_in_rectangle(mouse_x, mouse_y, x, y, x + 64, y + 32))
{
	if(mouse_check_button_pressed(mb_left))
	{
		image_index = (image_index + 1) % image_number;
		
		var correctSelections = 0;
		with(obj_mediumHeatButton) correctSelections += selected ? 1 : 0;
		with(obj_fiveMinutesButton) correctSelections += selected ? 1 : 0;
		
		if(correctSelections == 2)
		{
			with(obj_ratings) curRatings += 25;
		}
		else
		{
			with(obj_ratings) curRatings -= 25;
		}
		
		with(obj_lowHeatButton) instance_destroy();
		with(obj_mediumHeatButton) instance_destroy();
		with(obj_highHeatButton) instance_destroy();
		with(obj_fiveMinutesButton) instance_destroy();
		with(obj_eightMinutesButton) instance_destroy();
		with(obj_tenMinutesButton) instance_destroy();
		with(obj_confirmButton2) instance_destroy();
		
		
		with(obj_chivesButton) visible = true;
		with(obj_sourCreamButton) visible = true;
		with(obj_noneButton) visible = true;
		with(obj_confirmButton3) visible = true;
	}
}