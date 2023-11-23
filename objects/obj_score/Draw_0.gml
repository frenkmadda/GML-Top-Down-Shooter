var cameraX = camera_get_view_x(view_camera[0]);
var cameraY = camera_get_view_y(view_camera[0]);
var cameraW= camera_get_view_width(view_camera[0]);


draw_set_font(fnt_score); 
draw_text(cameraX+cameraW/2,cameraY+25,string(thescore));
var pc=(thescore/maxscore)*100;
draw_healthbar(cameraX+cameraW/2-500,100,(cameraX+cameraW/2)+500,85, pc, c_black, c_red, c_lime, 0, true, true);

if(thescore<=0){
room_goto(rm_win);	
	
}
//vorrei una barra hp grossa da svuotare per vincere