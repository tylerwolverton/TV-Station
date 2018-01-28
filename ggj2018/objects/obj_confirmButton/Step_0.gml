if(point_in_rectangle(mouse_x, mouse_y, x, y, x + 64, y + 32))
{
	if(mouse_check_button_pressed(mb_left))
	{
		//image_index = (image_index + 1) % image_number;
		if(state == 0)
		{
			var correctSelections = 0;
			with(obj_eggsButton) correctSelections += selected ? 1 : 0;
			with(obj_onionsButton) correctSelections += selected ? 1 : 0;
			with(obj_hamButton) correctSelections += selected ? 1 : 0;
		
			if(correctSelections == 3)
			{
				with(obj_ratings) curRatings += 25;
			}
			else
			{
				with(obj_ratings) curRatings -= 25;
			}
		
			with(obj_eggsButton) instance_destroy();
			with(obj_onionsButton) instance_destroy();
			with(obj_tomatoesButton) instance_destroy();
			with(obj_peppersButton) instance_destroy();
			with(obj_hamButton) instance_destroy();
			with(obj_cheeseButton) instance_destroy();
			with(obj_confirmButton) instance_destroy();
		
			with(obj_lowHeatButton) visible = true;
			with(obj_mediumHeatButton) visible = true;
			with(obj_highHeatButton) visible = true;
			with(obj_fiveMinutesButton) visible = true;
			with(obj_eightMinutesButton) visible = true;
			with(obj_tenMinutesButton) visible = true;
			with(obj_confirmButton2) visible = true;
			
			state++; 
		}
		else if(state == 1)
		{
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
			
			state++; 
		}
		else if(state == 2)
		{
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
			//with(obj_confirmButton3) instance_destroy();
			state++; 
		}
	}
}