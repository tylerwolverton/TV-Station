wordText = "";
badWordText = "#!@*%";
wordType = "";
cooldown = 20;
spd = 4;
isLast = false;
isLastBreaking = false;
textColor = c_black;
curTextColor = textColor;
newsNum = 1;

badTextWidth = string_width_ext(badWordText, -1, 100);
goodTextWidth = 0;
textWidth = 0;
textHeight = string_height_ext(badWordText, -1, 100);