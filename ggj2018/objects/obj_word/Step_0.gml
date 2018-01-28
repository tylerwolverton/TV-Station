x -= spd;

if(point_in_rectangle(mouse_x, mouse_y, x - 10, y - 10, x + textWidth + 10, y + textHeight + 10))
{
	textColor = c_lime;
		
	if(mouse_check_button_pressed(mb_left))
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
else
{
	textColor = c_black;
}

if(x < 0 || x > 1024) 
{
	if(wordType == "good") 
	{
		
	}
	else if(wordType == "bad")
	{
		with(obj_ratings)
		{
			switch(other.newsNum)
			{
				case 1:
					missed1++;
					instance_create_layer(0, 0, "Instances", obj_newsAnchorBadCat);
					break;
				case 2:
					missed2++;
					instance_create_layer(0, 0, "BackInstances", obj_newsAnchorBadArt);
					break;
				case 3:
					missed3++;
					with(obj_newsAnchorBadSpace) {visible = true; timer = 20}
					with(obj_newsAnchorGoodSpace) visible = false;
					//instance_create_layer(0, 0, "BackInstances", obj_newsAnchorBadSpace);
					break;
			}	
		}	
	}
		
	instance_destroy();
	
	if(isLastBreaking) 
	{
		with(obj_breakingNewsBar) instance_destroy();
		with(obj_breakingWordGenerator3)
		{
			numWords = array_length_1d(breakingNewsText3_2.goodWordArray);
			breakingNewsText3 = breakingNewsText3_2;
			startDelay = 450;
		}
	}
	
	if(isLast) 
	{
		if room_exists(room_next(room)) room_goto_next();	
	}
}