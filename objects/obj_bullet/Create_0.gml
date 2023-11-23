// set up motion
if(obj_player.controller==0)
	direction = point_direction(x,y,mouse_x,mouse_y);
else
	direction= obj_player.image_angle;
direction = direction + random_range(-4,4);
speed = 16;
image_angle= direction;

audio_sound_pitch(snd_shoot,random_range(0.7,1.3));
audio_play_sound(snd_shoot,1,false)