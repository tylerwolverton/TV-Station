draw_set_font(fnt_newsText);
draw_set_color(c_white);

draw_text(450, 50, "Weekly Ratings");

with(obj_ratings)
{
	draw_text(128, 120, "Episode 1:   " + string(missed1) + " missed words");
	draw_text(128, 240, "Episode 2:   " + string(missed2) + " missed words");
	draw_text(128, 360, "Episode 3:   " + string(missed3) + " missed words");
	draw_text(400, 480, "Total:  " + string(missed1 + missed2 + missed3) + " missed words");
}

draw_set_font(fnt_newsText1);
draw_text(50, 540, "0 - Award Winning"); 
draw_text(300, 540, "1-20 - Prime Time");
draw_text(550, 540, "21-40 - Renewed");
draw_text(800, 540, "41+ - Cancelled");