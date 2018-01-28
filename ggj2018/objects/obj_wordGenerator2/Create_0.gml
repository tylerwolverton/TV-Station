curCooldown = 0;
curWordNum = 0;

newsText2 = instance_create_layer(1024, 0, "Instances", obj_newsText2);

numWords = array_length_1d(newsText2.goodWordArray);

audio_play_sound(snd_newsBackground, 8, true);