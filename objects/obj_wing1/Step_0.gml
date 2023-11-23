image_alpha=min(image_alpha+0.01,1);

//death
if(wing1_hp<=0){
	instance_change(obj_explosion,1);	
}

//flash when hit
if(flag_hit>0){
	flashAlpha=1;
	flag_hit--;
}

if (flashAlpha>0)
	flashAlpha-=0.05;
