newsText = "Breaking News: The mural in town depicting the 5 cats exploring the city will also feature a small bunny that Squiggly found in the park on the way to the mural site. Sources say that the bunny is called Flip-Flops and will be doing his signature backflip in the mural. Stay tuned for updates as the situation unfolds. .";

badWordArray[0] = 2; badWordArray[1] = 5; badWordArray[2] = 9; badWordArray[3] = 13; badWordArray[4] = 15; 
badWordArray[5] = 18; badWordArray[6] = 24; badWordArray[7] = 27; badWordArray[8] = 32; badWordArray[9] = 33; 
badWordArray[10] = 39; badWordArray[11] = 41; badWordArray[12] = 45; badWordArray[13] = 48; badWordArray[14] = 53; 
badWordArray[15] = 54; badWordArray[16] = 57;

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

