/// @description Insert description here
// You can write your code in this editor
globalvar level;
level=1;

if(keyboard_check(vk_enter)){
	switch(room){
		case start:
			room_goto(game);
			break;
		case win: 
				level+=1
				lives+=1;
				switch(level){
					case 2: room_goto(level2);	
					break;	
				}
				break;
		case gameover:
			game_restart();
			break;		
	}	
}
if(room==game){
	if(score>=200){
		audio_stop_all();
		audio_play_sound(clear,2,false);
		room_goto(win);
	}
	if(lives<0)
		room_goto(gameover);
}

if(room==level2){
	if(enemies<=0){
		audio_stop_all();
		audio_play_sound(clear,2,false);
		room_goto(win);
	}
	if(lives<0)
		room_goto(gameover);
}