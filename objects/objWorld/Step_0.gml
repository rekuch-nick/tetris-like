icd = max(icd - 1, 0);
input();

if(state == State.pause){
	if(clickEscape || clickEnter){ state = State.play; return; }
}

if(state != State.play){ return; }
ms ++;
if(ms >= 30){
	ms -= 30;
	sc ++;
	
	
	zoneStuff();
	
	
	
	
	
	
	
	if(sc >= 60){
		sc -= 60;
		mn ++;
		if(mn >= 60){
			mn -= 60;
			hr ++;
		}
	}
}

//water
if(waterBank > 0){
	waterBank --;
	waterLevel = clamp(waterLevel + 1, 0, pa.sprite_height);
}
if(waterBank < 0){
	waterBank ++;
	waterLevel = clamp(waterLevel - 1, 0, pa.sprite_height);
}


//spawn block
if(activeBlock == noone){
	pSPawn ++;
	
	if(nextBlock == noone){ instance_create_depth(0, 0, -500, objBlock); }
	
	activeBlock = nextBlock;
	with(activeBlock){
		xSpot = 6;
		ySpot = 0;
		
	}
	
	
	nextBlock = instance_create_depth(0, 0, -500, objBlock);
	fallCD = -10;
	
	if(blockCollides(activeBlock)){
		instance_destroy(activeBlock);
		activeBlock = noone;
		with(objMapBlock){ instance_destroy(); }
		for(var a=0; a<14; a++){ for(var b=0; b<18; b++){ 
			instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effBlockRemove);
			ww.bmap[a, b] = noone; 
		}}
		fallCDMax = 30;
		stageScore = 0;
		score = 0;
		fish = 0;
		fruit = 0;
		//instance_create_depth(0, 0, -1000, objScreenTitle);
		return;
	}
}

//spin
if(clickSpace && activeBlock.canTurn){ rotateClockwise(activeBlock); }

//slide block
if( (xIn < 0 && icd < 1) || xClick < 0){ slideBlock(activeBlock, -1); icd = 5; }
if( (xIn > 0 && icd < 1) || xClick > 0){ slideBlock(activeBlock, 1); icd = 5; }

//rapid block
if(yIn > 0 && fallCD >= 0){ fallCD = fallCDMax; }




//slow block
if(yIn < 0 && ms % 2 == 0){
	fallCD --;
}



//block falls
fallCD ++;
if(fallCD >= fallCDMax){
	if(activeBlock == noone){ return; }
	
	if(blockOnGround(activeBlock)){
		
		blockToMap(activeBlock);
		rowCheck();
		activeBlock = noone;
	} else {
		
		yLast = activeBlock.ySpot;
		activeBlock.ySpot ++;
		blockSplash();
	}
	
	fallCD = 0;
}

if(clickEscape){ ww.state = State.pause; }

//debug
if(debugPossible){
	if(clickBackSpace){ debugMode = !debugMode; }
	if(debugMode){
		if(clickPageUp){ stageCheck(true); }
		if(clickPageDown){ zoneListIndex = clamp(zoneListIndex - 2, -1, array_length(zoneList) - 1); stageCheck(true); }
	}
}
