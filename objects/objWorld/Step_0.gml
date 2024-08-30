icd = max(icd - 1, 0);
input();


if(state != State.play){ return; }
ms ++;
if(ms >= 30){
	ms -= 30;
	sc ++;
	
	mp = clamp(mp + 1, 0, mpMax);
	
	if(sc % 30 == 3 && lines > 5){
		instance_create_depth(room_width, 100, -600, objCherry);
	}
	
	if(sc % 5 == 0 && lines >= 10){
		ichor();
	}
	
	if(sc % 15 == 0 && lines >= 15){
		wandererSpawn();
	}
	
	//if(sc % 10 == 0 && lines >= 0){
	if(pSPawn > 10){
		pSPawn -= irandom_range(floor(pSPawn / 2), pSPawn);
		specBlockIncoming = choose(imgBlockDrillBit, imgBlockSeed);
		//specBlockIncoming = imgBlockSeed;
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
	pSPawn ++;
	
	if(nextBlock == noone){ instance_create_depth(0, 0, -500, objBlock); }
	
	activeBlock = nextBlock;
	with(activeBlock){
		xSpot = 6;
		ySpot = 0;
		
	}
	
	
	nextBlock = instance_create_depth(0, 0, -500, objBlock);
	fallCD = 0;
	
	if(blockCollides(activeBlock)){
		instance_destroy(activeBlock);
		activeBlock = noone;
		with(objMapBlock){ instance_destroy(); }
		for(var a=0; a<14; a++){ for(var b=0; b<18; b++){ 
			instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effBlockRemove);
			ww.bmap[a, b] = noone; 
		}}
		fallCDMax = 30;
		return;
	}
}

//spin
if(clickSpace && activeBlock.canTurn){ rotateClockwise(activeBlock); }

//slide block
if( (xIn < 0 && icd < 1) || xClick < 0){ slideBlock(activeBlock, -1); icd = 5; }
if( (xIn > 0 && icd < 1) || xClick > 0){ slideBlock(activeBlock, 1); icd = 5; }

//rapid block
if(yIn > 0){ fallCD = fallCDMax; }

//mp charge
if(yIn < 0){
	if(mp >= mpBank){
		mpBank ++;
	}
	if(mpBank >= 150){
		mpBank = 0;
		mp -= 150;
		instance_destroy(activeBlock);
		activeBlock = noone;
		return;
	}
} else {
	mpBank = 0;
}

//slow block
if(yIn < 0 && ms % 2 == 0){
	fallCD --;
}

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



