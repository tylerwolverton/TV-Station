newsText = "Breaking News: Squiggly Williams has just begun work on a new mural featuring five cats exploring the downtown area. More on this story at 11. .";

badWordArray[0] = 2; badWordArray[1] = 5; badWordArray[2] = 9; badWordArray[3] = 13; badWordArray[4] = 15; 
badWordArray[5] = 18; badWordArray[6] = 24; 

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

