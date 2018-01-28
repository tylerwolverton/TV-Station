startDelay = 400;

curCooldown = 0;
curWordNum = 0;

breakingNewsText3 = instance_create_layer(0, 0, "Instances", obj_breakingNewsText3);
breakingNewsText3_2 = instance_create_layer(0, 0, "Instances", obj_breakingNewsText3_2);

numWords = array_length_1d(breakingNewsText3.goodWordArray);
