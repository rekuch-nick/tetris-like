function zoneSetup(){
	
	
	ww.specBlockIncoming = noone;
	ww.linesMatter = true; ww.stageScore = 0;
	ww.zoneProgMax = 300;
	ww.waterBank = -ww.waterLevel;
	ww.fish = 0; ww.fishMatter = false;
	ww.fruit = 0; ww.fruitsMatter = false;
	if(ww.nextBlock != noone){ instance_destroy(ww.nextBlock); ww.nextBlock = noone; }
	//if(ww.activeBlock != noone){ instance_destroy(ww.activeBlock); ww.activeBlock = noone; }
	ww.nextBlock = noone;
	ww.canMatch3 = false;
	
	if(ww.zone == "Match 3"){
		ww.canMatch3 = true;
		ww.zoneProgMax = 180;
		ww.linesMatter = false;
	}
	
	
	if(ww.zone == "Fish Tank"){
		waterCol1 = c_aqua; waterCol2 = c_aqua; waterCol3 = c_aqua; waterCol4 = c_aqua;
		waterAlpha = .2; waterAlphaMin = .2; waterAlphaMax = .2;
		waterFade = 0;
		
		ww.waterBank += 32 * 8;
		ww.fishMatter = true;
		ww.zoneProgMax = 20;
	}
	
	
	if(ww.zone == "Pond"){
		waterCol1 = c_aqua; waterCol2 = c_aqua; waterCol3 = c_aqua; waterCol4 = c_aqua;
		waterAlpha = .2; waterAlphaMin = .2; waterAlphaMax = .2;
		waterFade = 0;
		
		ww.waterBank += 32 * 15;
	}
	
	if(ww.zone == "Bait Shop"){
		
		ww.fishMatter = true;
		ww.zoneProgMax = 20;
	}
	
	if(ww.zone == "Frost Fade"){
		unitClipboard = imgBlockWitch;
		waterCol1 = c_blue; waterCol2 = c_blue; waterCol3 = c_blue; waterCol4 = c_blue;
		waterAlpha = .2; waterAlphaMin = .2; waterAlphaMax = .2;
		waterFade = 0;
		
	}
	
	
	
	
	if(ww.zone == "Endless"){
		waterCol1 = choose(c_aqua, c_blue, c_purple, c_green, c_yellow); 
		waterCol2 = waterCol1 ; waterCol3 = waterCol1 ; waterCol4 = waterCol1 ;
		waterAlpha = .2; waterAlphaMin = .2; waterAlphaMax = .2;
		waterFade = 0;
		
		//imgBlockFish, imgBlockRadWaste, imgBlockBub, imgBlockMopHead, imgBlockRock);
		do{
			ww.spawnArray = [];
			if(irandom_range(1, 2) == 1){ ww.spawnArray[array_length(ww.spawnArray)] = imgBlockDrillBit; }
			if(irandom_range(1, 2) == 1){ 
				ww.spawnArray[array_length(ww.spawnArray)] = imgBlockSeed; 
				if(irandom_range(1, 2) == 1){ ww.spawnArray[array_length(ww.spawnArray)] = imgBlockSun; }
			}
			if(irandom_range(1, 2) == 1){ ww.spawnArray[array_length(ww.spawnArray)] = imgBlockFox01 ; ww.spawnArray[array_length(ww.spawnArray)] = imgBlockChicken; }
			if(irandom_range(1, 2) == 1){ 
				ww.spawnArray[array_length(ww.spawnArray)] = imgBlockFish;
				ww.fishMatter = choose(false, false, true);
			}
			if(irandom_range(1, 3) == 1){ ww.spawnArray[array_length(ww.spawnArray)] = imgBlockRadWaste; }
			if(irandom_range(1, 2) == 1){ 
				ww.spawnArray[array_length(ww.spawnArray)] = imgBlockBub; 
				ww.spawnArray[array_length(ww.spawnArray)] = imgBlockBub; 
			}
			if(irandom_range(1, 2) == 1){ ww.spawnArray[array_length(ww.spawnArray)] = imgBlockRock; }
		} until (array_length(ww.spawnArray) > 1);
		
		
		ww.fruitsMatter = choose(false, false, false, false, false, true);
		
		
		if(ww.fishMatter){ 
			ww.waterBank += 32 * choose(8, 12, 16);
		} else {
			ww.waterBank += 32 * choose(0, 0, 0, 0, 6, 8, 12, 16);
		}
		if(ww.waterBank >= 32 * 6 && irandom_range(1, 4) == 1){ ww.spawnArray[array_length(ww.spawnArray)] = imgBlockMopHead; }
		
		if(ww.fishMatter || ww.fruitsMatter){ 
			ww.zoneProgMax = 20;
		}
	}

}