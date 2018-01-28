curCooldown = 0;
curWordNum = 0;

newsText1 = instance_create_layer(1024, 0, "Instances", obj_newsText1);

numWords = array_length_1d(newsText1.goodWordArray);

//audio_play_sound(snd_xyloNews1, 8, true);
audio_play_sound(snd_newsBackground, 8, true);