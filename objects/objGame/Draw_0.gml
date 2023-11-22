/// @description Insert description here
// You can write your code in this editor
switch(room){
	case game: 
		draw_text(400,20,"LEVEL1");
		draw_text(320,40,"-Score 200 points");
		draw_text(20,20,"SCORE:"+string(score));
	    draw_text(20,40,"LIVES:"+string(lives));
		break;
	case level2:
		draw_text(400,20,"LEVEL2");
		draw_text(300,40,"-Destroy 20 Enemies");
		draw_text(20,20,"SCORE:"+string(score));
		draw_text(20,40,"ENEMY LEFT:"+string(enemies));
	    draw_text(20,60,"LIVES:"+string(lives));
		break;
	case start:
		draw_set_halign(fa_center);
		var c=c_blue;
		draw_text_transformed_color(room_width/2,100,"SPACE SHOOTER",3,3,0,c,c,c,c,1);
		draw_text(room_width/2,200,@"

- UP ARROW: Move forward
- DOWN ARROW: Move backward
- LEFT ARROW: Move left
- RIGHT ARROW: Move right
- SPACE: Shoot

>>Press Enter to Start Game<<
"                       
				);
				draw_set_halign(fa_left);
				break;
	case win:
		draw_set_halign(fa_center);
		var c=c_green;
		draw_text_transformed_color(room_width/2,100,"LEVEL WON!!!",3,3,0,c,c,c,c,1);
		draw_text(room_width/2,200,"You Earned a Life!");
		draw_text(room_width/2,300,"PRESS ENTER TO NEXT LEVEL");
		draw_set_halign(fa_left);
		break;
	case gameover:
		draw_set_halign(fa_center);
		var c=c_red;
		draw_text_transformed_color(room_width/2,100,"GAME OVER",3,3,0,c,c,c,c,1);
		draw_text(room_width/2,200,"FINAL SCORE:"+string(score));
		draw_text(room_width/2,500,"PRESS ENTER TO RESTART"); 
		draw_set_halign(fa_left);
		break;				
}
