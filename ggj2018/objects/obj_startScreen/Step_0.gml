if(timer > 0)
{
	timer--;
}
else
{
	if room_exists(room_next(room)) room_goto_next();	
	
	audio_stop_sound(snd_newsIntro);
}