if(startDelay < 1)
{
	if(curCooldown < 1 && curWordNum < numWords)
	{
		with(breakingNewsText3)
		{
			word = goodWordArray[other.curWordNum];
			wordType = "good";
			for(i = 0; i < array_length_1d(badWordArray); i++)
			{
				if(other.curWordNum == badWordArray[i])
				{
					wordType = "bad";
					break;
				}
			}
			other.curWordNum++;
		
			var isLastWord = other.curWordNum == other.numWords;
			var wordCooldown;
			var inst = instance_create_layer(1024, 537, "Instances", obj_word);
			with(inst)
			{
				wordText = other.word;
				wordType = other.wordType;
				textColor = c_white;
				//spd = -5;
				newsNum = 3;
				goodTextWidth = string_width_ext(wordText, -1, 100);
				if(wordType == "good") 
				{
					textWidth = goodTextWidth;
				}
				else 
				{
					textWidth = badTextWidth;
				}
			
				isLastBreaking = isLastWord;
				wordCooldown = cooldown + string_length(wordText) * 1.4;
			}
		
			other.curCooldown = wordCooldown;
		}	
	}
	else
	{
		curCooldown--;
	}
}
else
{
	startDelay--;	
	if(startDelay < 1)
	{
		instance_create_layer(42, 525, "InstanceBreaking", obj_breakingNewsBar);
		audio_pause_all();
		audio_play_sound(snd_xyloNews3, 10, true);
		curWordNum = 0;
	}
}