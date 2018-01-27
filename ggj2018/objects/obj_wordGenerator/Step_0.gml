if(curCooldown < 1 && curWordNum < numWords)
{
	with(newsText1)
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
		
		var wordCooldown;
		var inst;
		inst = instance_create_layer(1024, 700, "Instances", obj_word);
		with(inst)
		{
			wordText = other.word;
			wordType = other.wordType;
			goodTextWidth = string_width_ext(wordText, -1, 100);
			if(wordType == "good") textWidth = goodTextWidth;
			else textWidth = badTextWidth;
			wordCooldown = cooldown + string_length(wordText) * 1.5;
		}
		
		other.curCooldown = wordCooldown;
	}	
}
else
{
	curCooldown--;
}