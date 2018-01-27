if(point_in_rectangle(mouse_x, mouse_y, x, y, x + 64, y + 32))
{
	if(mouse_check_button_pressed(mb_left))
	{
		image_index = (image_index + 1) % image_number;
		
		var correctSelections = 0;
		with(obj_eggsButton) correctSelections += selected ? 1 : 0;
		with(obj_onionsButton) correctSelections += selected ? 1 : 0;
		with(obj_hamButton) correctSelections += selected ? 1 : 0;
		
		if(correctSelections == 3)
		{
			with(obj_eggsButton) instance_destroy();
			with(obj_onionsButton) instance_destroy();
			with(obj_tomatoesButton) instance_destroy();
			with(obj_peppersButton) instance_destroy();
			with(obj_hamButton) instance_destroy();
			with(obj_cheeseButton) instance_destroy();
			with(obj_confirmButton) instance_destroy();
		}
		else
		{
			
		}
	}
}