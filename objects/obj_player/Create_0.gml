immune=false;
cooldown=0;
player_hp=100;
immuneCoolDown=0;
flashAlpha=0;
flashColor=c_red;
flag_hit=0;
controllerangle=0;
controller=0;
potions=2;
potionStop=0;
gamepad_set_axis_deadzone(0,0.2);	

enum states{
normal,
immune,
warning
}

sprites_array[states.normal]= sp_player;
sprites_array[states.immune]=spr_immune;
sprites_array[states.warning]=spr_warning;

sprite_index=sprites_array[states.normal];