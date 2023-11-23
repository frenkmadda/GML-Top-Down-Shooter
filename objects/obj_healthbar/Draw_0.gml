var pl_hp=(max_hp/100)*obj_player.player_hp
var pl_hpFollow=(max_hp/100)*follow_hp;
draw_healthbar(obj_player.x,obj_player.y+60,obj_player.x+100,obj_player.y+65,pl_hpFollow, c_black, c_red, c_red, 0, true, true);
draw_healthbar(obj_player.x,obj_player.y+60,obj_player.x+100,obj_player.y+65,pl_hp, c_black, c_orange, c_green, 0, 0, 0);
