image_alpha=min(image_alpha+0.01,1);

if(wing2_hp<=0){
	instance_change(obj_explosion,1);
}


if(flag_hit>0){
	flashAlpha=1;
	flag_hit--;
}

if (flashAlpha>0)
	flashAlpha-=0.05;
