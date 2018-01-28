newsText = "Good afternoon! Today's top story is a report that a new type of spacecraft propulsion has been invented that will make it possible for a spacecraft to leave our solar system in just 30 minutes. Scientists say that this new craft is made possible by the use of a slingshot with a really dense rubber band that can accelerate an object faster than ever thought possible. 'I mean once you pull it back far enough the ship really flies, it's cool to see,' said a local boy who witnessed a test launch. The first craft to be launched in this manner will be sent to explore the Andromeda galaxy sometime next year, with excursions to further galaxies planned in the future. That's all the news we have for today, talk to you lovely people tomorrow! .";

badWordArray[0] = 2; badWordArray[1] = 6; badWordArray[2] = 11; badWordArray[3] = 13; badWordArray[4] = 15; 
badWordArray[5] = 18; badWordArray[6] = 24; badWordArray[7] = 28; badWordArray[8] = 31; badWordArray[9] = 34;
badWordArray[10] = 37; badWordArray[11] = 41; badWordArray[12] = 45; badWordArray[13] = 49; badWordArray[14] = 54;
badWordArray[15] = 57; badWordArray[16] = 61; badWordArray[17] = 64; badWordArray[18] = 68; badWordArray[19] = 68;
badWordArray[20] = 72; badWordArray[21] = 73; badWordArray[22] = 76; badWordArray[23] = 83; badWordArray[24] = 86; 
badWordArray[25] = 89; badWordArray[26] = 91; badWordArray[27] = 95; badWordArray[28] = 99; badWordArray[29] = 101;
badWordArray[30] = 102; badWordArray[31] = 103; badWordArray[32] = 104; badWordArray[33] = 105; badWordArray[34] = 110;
badWordArray[35] = 113; badWordArray[36] = 117; badWordArray[37] = 118; badWordArray[38] = 122; badWordArray[39] = 125;
badWordArray[40] = 127; badWordArray[41] = 130; badWordArray[42] = 135;

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

