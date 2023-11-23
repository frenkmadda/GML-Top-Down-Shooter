 direction = point_direction(obj_boss.x,obj_boss.y,obj_player.x,obj_player.y);
direction = direction + random_range(-4,4);
speed = 16;
image_angle= direction;
audio_sound_pitch(snd_shoot,random_range(0.7,1.3));
audio_play_sound(snd_shoot,1,false)
