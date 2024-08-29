icd = max(icd - 1, 0);
input();


if(state != State.play){ return; }
ms ++;
if(ms >= 30){
	ms -= 30;
	sc ++;
	
	if(sc % 30 == 3 && lines > 1){
		//instance_create_depth(room_width, 100, -600, objCherry);
	}
	
	if(sc % 5 == 0 && lines >= 10){
		ichor();
	}
	
	if(sc % 15 == 0 && lines >= 15){
		wandererSpawn();
	}
	
	
	
	
	if(sc >= 60){
		sc -= 60;
		mn ++;
		if(mn >= 60){
			mn -= 60;
			hr ++;
		}
	}
}


//spawn block
if(activeBlock == noone){
	if(nextBlock == noone){ instance_create_depth(0, 0, -500, objBlock); }
	
	activeBlock = nextBlock;
	with(activeBlock){
		xSpot = 6;
		ySpot = 0;
		
	}
	
	nextBlock = instance_create_depth(0, 0, -500, objBlock);
	
}

//spin
if(clickSpace){ rotateClockwise(activeBlock); }

//slide block
if( (xIn < 0 && icd < 1) || xClick < 0){ slideBlock(activeBlock, -1); icd = 5; }
if( (xIn > 0 && icd < 1) || xClick > 0){ slideBlock(activeBlock, 1); icd = 5; }

//rapid block
if(yIn > 0){ fallCD = fallCDMax; }

//block falls
fallCD ++;
if(fallCD >= fallCDMax){
		
	if(blockOnGround(activeBlock)){
		
		blockToMap(activeBlock);
		rowCheck();
		activeBlock = noone;
	} else {
		activeBlock.ySpot ++;
	}
	
	fallCD = 0;
}



