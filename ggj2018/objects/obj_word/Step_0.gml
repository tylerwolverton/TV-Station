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

if(x < 0) instance_destroy();