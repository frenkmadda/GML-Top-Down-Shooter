with(other){
	var xscale = max(other.image_xscale,image_xscale);
	var yscale= max(other.image_yscale,image_yscale);
	var maxhp= max(other.hp,hp);
	var obj=instance_create_layer(x,y,"Enemy_layer",obj_enemy);
	if(xscale<=xscaleInit+1){
	obj.image_xscale=xscale +0.1;
	obj.image_yscale=yscale+0.1;
	obj.atk+=1;
	obj.speed=2;
	obj.hp=maxhp+5;
	instance_destroy();
	}
	else
		instance_change(obj_explosion,1);
}
audio_sound_pitch(snd_grow,random_range(1,1.3));
audio_play_sound(snd_grow,1,false);
instance_destroy();



