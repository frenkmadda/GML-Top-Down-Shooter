/// @description Insert description here
// You can write your code in this editor
if(room==start || room==gameover)
	exit;
if(room==game){	
	if(choose(0,1)==0){
		xx=choose(0,room_width);
		yy=irandom_range(0,room_height);
	}
	else {
		xx=irandom_range(room_width,0);
		yy=choose(room_height,0);	
	}
instance_create_layer(xx,yy,"Instances",rockobj);
alarm[0]=4*60;
}
else if(room==level2){	
		if(choose(0,1)==0){
		xx=choose(0,room_width);
		yy=irandom_range(0,room_height);
		}
	else {
		xx=irandom_range(room_width,0);
		yy=choose(room_height,0);	
	}
instance_create_layer(xx,yy,"Instances",enemyobj1);
alarm[0]=2.3*60;	
	}

