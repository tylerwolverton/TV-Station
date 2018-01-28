draw_set_font(fnt_newsText);
draw_set_color(c_black);

var totalScore = 0;

with(obj_ratings)
{
	totalScore = missed1 + missed2 + missed3;
}

if(totalScore > 249)
{
	instance_create_layer(0,0,"Instances",obj_resultsPoop);
	
	with(obj_farts) visible = true;
	if(!isPlaying) 
	{
		isPlaying = true;
		audio_play_sound(snd_farts, 10, false);
	}
}
else if(totalScore == 0)
{
	instance_create_layer(0,0,"Instances",obj_resultsNormal);
	with(obj_awardWinning) visible = true;
	if(!isPlaying) 
	{
		isPlaying = true;
		audio_play_sound(snd_awardWinning, 10, false);
	}
}
else if(totalScore < 21)
{
	instance_create_layer(0,0,"Instances",obj_resultsNormal);
	with(obj_primetime) visible = true;
	if(!isPlaying) 
	{
		isPlaying = true;
		audio_play_sound(snd_applause, 10, false);
	}
}
else if(totalScore < 41)
{
	instance_create_layer(0,0,"Instances",obj_resultsNormal);
	with(obj_renewed) visible = true;
	if(!isPlaying) 
	{
		isPlaying = true;
		audio_play_sound(snd_applause, 10, false);
	}
}
else
{
	instance_create_layer(0,0,"Instances",obj_resultsNormal);
	with(obj_canceled) visible = true;
	if(!isPlaying) 
	{
		isPlaying = true;
		audio_play_sound(snd_canceled, 10, false);
	}
}

with(obj_ratings)
{
	draw_text(500, 280, string(missed1));
	draw_text(500, 350, string(missed2));
	draw_text(500, 420, string(missed3));
	draw_text(500, 500, string(totalScore));
}
