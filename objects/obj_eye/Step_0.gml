if(!instance_exists(obj_wing1)){
	if(!instance_exists(obj_wing2)){	
		image_alpha=min(image_alpha+0.01,1);
	}
}

if(!instance_exists(obj_wing2)){
	if(!instance_exists(obj_wing1))	{
		image_alpha=min(image_alpha+0.01,1);
	}
}
