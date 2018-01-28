draw_set_font(fnt_newsText);
draw_set_color(curTextColor);

if(wordType == "good")
{
	draw_text(x, y, wordText);
}
else if(wordType == "bad")
{
	draw_text(x, y, badWordText);
}
