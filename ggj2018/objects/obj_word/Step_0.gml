x -= spd;

if point_in_rectangle(mouse_x, mouse_y, x, y, x + textWidth, y + textHeight)
{
	if mouse_check_button_pressed(mb_left)
	{
		if(wordType == "good") 
		{
			wordType = "bad";
			wordWidth = badTextWidth;
		}
		else if(wordType == "bad")
		{
			wordType = "good";
			wordWidth = goodTextWidth;
		}
	}
}

if(x < 0) 
{
	if(wordType == "good") 
	{
		with(obj_ratings)
		{
			curRatings += 5;	
		}
	}
	else if(wordType == "bad")
	{
		with(obj_ratings)
		{
			curRatings -= 5;	
		}	
		
		instance_create_layer(0, 0, "Instances", obj_newsAnchorBad);
	}
		
	instance_destroy();
	
	if(isLast) 
	{
		if room_exists(room_next(room)) room_goto_next();	
	}
}