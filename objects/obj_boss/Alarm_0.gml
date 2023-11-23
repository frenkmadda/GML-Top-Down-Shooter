var move=random_range(1,3);


if(move<2.7 && move>=1) {
	moveChoice=1;
	atk_cooldown=300;
}

if(move<3 && move>=2.7){
	moveChoice=2
	atk_cooldown=600;
}


alarm[0]=atk_cooldown;
