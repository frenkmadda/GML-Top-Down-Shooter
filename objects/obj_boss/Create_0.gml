hp_boss=1000;
max_hpBoss=1000;

atk_cooldown=200;
flag=0;
initial_xscale=image_xscale;
initial_yscale=image_yscale;
moveChoice=0;
cooldown=0;
flashAlpha=0;
flashColor=c_red;
flag_hit=0;
damage=0;
respawnWing=0;

wing1_x=obj_wing1.x;
wing2_x=obj_wing2.x;
wing1_y=obj_wing1.y;
wing2_y=obj_wing2.y;
wingAngle=obj_wing1.image_angle;
alarm[0]=atk_cooldown;
image_alpha=0;
audio_stop_all();
var snd=audio_play_sound(snd_boss,1,true);
audio_sound_gain(snd,0,0);
audio_sound_gain(snd,1.2,700);

