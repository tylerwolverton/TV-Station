newsText = "Good afternoon! Today's top story is a report that local artist Todd 'Squiggly' Williams has been spotted creating murals around town. He's painted a seascape all over the library walls and a starry sky on the water tower. Keep an eye out for more of his work to start popping up as the week continues. That's all the news we have for today, talk to you lovely people tomorrow! .";

badWordArray[0] = 2; badWordArray[1] = 6; badWordArray[2] = 9; badWordArray[3] = 13; badWordArray[4] = 17; 
badWordArray[5] = 19; badWordArray[6] = 23; badWordArray[7] = 25; badWordArray[8] = 28; badWordArray[9] = 30;
badWordArray[10] = 31; badWordArray[11] = 36; badWordArray[12] = 39; badWordArray[13] = 42; badWordArray[14] = 43;
badWordArray[15] = 47; badWordArray[16] = 50; badWordArray[17] = 54; badWordArray[18] = 58; badWordArray[19] = 59;
badWordArray[20] = 61; badWordArray[21] = 63; badWordArray[22] = 65; badWordArray[23] = 67; badWordArray[24] = 68;

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

