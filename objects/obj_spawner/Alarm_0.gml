audio_sound_pitch(snd_spawn,random_range(0.8,1.2));
audio_play_sound(snd_spawn,1,false);
instance_create_layer(random(room_width-20),random(room_height),"Enemy_Layer",obj_enemySpawn);

alarm[0]= spawnrate;
