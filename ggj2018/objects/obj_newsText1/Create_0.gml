newsText = "Good afternoon! We've had a lovely day so far with five fluffy kittens being returned to their owner after going on an unexpected walk around town. That's all the news we have for today, talk to you lovely people tomorrow! .";

badWordArray[0] = 5; badWordArray[1] = 11; badWordArray[2] = 14; badWordArray[3] = 17; badWordArray[4] = 23; badWordArray[5] = 25; badWordArray[6] = 29; badWordArray[7] = 37; badWordArray[8] = 38;

goodWordArray[0] = "";
wordIndex = 0;

var curWord = "";
for(i = 1; i < string_length(newsText); i++)
{
	if(string_char_at(newsText, i) == " ")
	{
		goodWordArray[wordIndex++] = curWord;
		curWord = "";
	}
	else
	{
		curWord += string_char_at(newsText, i);	
	}
}

