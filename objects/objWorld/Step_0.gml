icd = max(icd - 1, 0);
input();






//debug
if((state == State.play || state == State.pause) && debugPossible){
	if(clickBackSpace){ debugMode = !debugMode; }
	if(debugMode){
		if(clickPageUp){ stageCheck(true); }
		if(clickPageDown){ zoneListIndex = clamp(zoneListIndex - 2, -1, array_length(zoneList) - 1); stageCheck(true); }
		if(keyboard_check_pressed(vk_insert)){ printMap(); }
		if(keyboard_check_pressed(vk_home)){ waterBank += 32; }
		if(keyboard_check_pressed(vk_end)){ waterBank -= 32; }
		if(keyboard_check_pressed(vk_delete)){ stageScore = 0; }
	}
}






if(state == State.pause){
	if(clickEscape || clickEnter){ state = State.play; return; }
}

if(state != State.play){ return; }
ms ++;
if(ms >= 30){
	ms -= 30;
	sc ++;
	
	stageCheck(false);
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
if(waterBank > 0){  waterRise(1); }
if(waterBank < 0){ waterRise(-1); }


//spawn block
if(activeBlock == noone){
	
	pSPawn ++;
	
	if(nextBlock == noone){ instance_create_depth(0, 0, -500, objBlock); }
	
	activeBlock = nextBlock;
	with(activeBlock){ xSpot = 6; ySpot = 0; }
	
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
if(clickSpace && activeBlock.canTurn){ 
	
	if(activeBlock.map[0, 0] == imgBlockClampL){
		activeBlock.map[0, 0] = imgBlockClampR;
	} else if(activeBlock.map[0, 0] == imgBlockClampR){
		activeBlock.map[0, 0] = imgBlockClampL;
	} else {
		rotateClockwise(activeBlock); 
	}
}

//slide block
if( (xIn < 0 && icd < 1) || xClick < 0){ slideBlock(activeBlock, -1); icd = 5; }
if( (xIn > 0 && icd < 1) || xClick > 0){ slideBlock(activeBlock, 1); icd = 5; }

//rapid block
if(yIn > 0 && fallCD >= 0){ 
	if(activeBlock.map[0, 0] == imgFrog){
		
	} else if(fallCD + 2 < fallCDMax){
		fallCD = fallCDMax - 1; 
	} else {
		fallCD = fallCDMax; 
	}
}
//todo - easier to stop? small deley


var forceGround = false;
//slow block
if(yIn < 0 && ms % 2 == 0){
	fallCD --;
	
	if(activeBlock.canStick){
		fallCD = 0;
		activeBlock.stickTime ++;
		if(activeBlock.stickTime >= 20){
			forceGround = true;
			fallCD = fallCDMax;
		}
	}
	
}
if(yIn == 0 && activeBlock != noone){ 
	
	activeBlock.stickTime = 0; 
}


//block falls
fallCD ++;
if(fallCD >= fallCDMax){
	if(activeBlock == noone){ return; }
	
	if(blockOnGround(activeBlock) || forceGround){
		
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


sunshineMelt();
carrotFeed();
if(boil){
	ww.waterLevel += irandom_range(-8, 8);
	if(ww.waterLevel < 32 * 5){ ww.waterLevel ++; }
	if(ww.waterLevel > 32 * 7){ ww.waterLevel --; }
}



if(clickEscape){ ww.state = State.pause; }


