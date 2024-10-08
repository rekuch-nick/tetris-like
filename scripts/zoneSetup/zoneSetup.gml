function zoneSetup(){
	
	fallCDMax = 30;
	
	for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
		if(ww.bmap[a, b] != noone){
			if(ww.bmap[a, b].sprite_index == imgBlockUnbreakable){
				scoreBlock(a, b);
				dropCol(a, b, 0);
			}
		}
	}}
	
	ww.normalBlocks = "standard";
	
	ww.boil = false;
	ww.frogsMatter = false;
	ww.foxBucks = 0;
	ww.specBlockIncoming = noone;
	ww.linesMatter = true; ww.stageScore = 0;
	ww.zoneProgMax = 300;
	ww.waterBank = -ww.waterLevel;
	ww.fish = 0; ww.fishMatter = false;
	ww.fruit = 0; ww.fruitsMatter = false;
	//if(ww.nextBlock != noone){ instance_destroy(ww.nextBlock); ww.nextBlock = noone; }
	//if(ww.activeBlock != noone){ instance_destroy(ww.activeBlock); ww.activeBlock = noone; }
	ww.nextBlock = noone;
	ww.canMatch3 = false;
	
	if(ww.zone == "Match 3"){
		ww.canMatch3 = true;
		ww.zoneProgMax = 100;
		ww.linesMatter = false;
	}
	
	
	
	
	if(ww.zone == "Fish Tank"){
		waterCol1 = c_aqua; waterCol2 = c_aqua; waterCol3 = c_green; waterCol4 = c_green;
		waterAlpha = .2; waterAlphaMin = .2; waterAlphaMax = .2;
		waterFade = 0;
		
		ww.waterBank += 32 * 8;
		ww.fishMatter = true;
		ww.zoneProgMax = 20;
	}
	
	
	if(ww.zone == "Pond"){
		waterCol1 = c_aqua; waterCol2 = c_aqua; waterCol3 = c_blue; waterCol4 = c_blue;
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
		waterCol1 = c_blue; waterCol2 = c_blue; waterCol3 = c_purple; waterCol4 = c_purple;
		waterAlpha = .2; waterAlphaMin = .2; waterAlphaMax = .2;
		waterFade = 0;
		
	}
	
	if(ww.zone == "Grassland"){
		ww.normalBlocks = "easy";
		unitClipboard = imgBlockCarrot;
	}
	
	if(ww.zone == "Day Labor"){
		ww.normalBlocks = "easy";
		ww.linesMatter = false;
		ww.fruitsMatter = true;
		ww.zoneProgMax = 10;
	}
	
	if(ww.zone == "Zoo"){
		waterCol1 = c_aqua; waterCol2 = c_aqua; waterCol3 = c_blue; waterCol4 = c_lime;
		waterAlpha = .2; waterAlphaMin = .2; waterAlphaMax = .2;
		waterFade = 0;
		
		ww.waterBank += 32 * 11;
	}
	
	if(ww.zone == "Fun Zone"){
		ww.normalBlocks = "hard";
		unitClipboard = choose(imgBlockClampL, imgBlockClampR);
	}
	
	if (ww.zone == "Frog Or ?"){
		ww.frogsMatter = true;
		for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
		if(ww.bmap[a, b] != noone){
				instance_destroy(ww.bmap[a, b]);
				ww.bmap[a, b] = noone;
			}
		}}
		ww.zoneProgMax = 4;
	}
	
	if(ww.zone == "Hot Pot"){
		waterCol1 = c_orange; waterCol2 = c_orange; waterCol3 = c_red; waterCol4 = c_red;
		waterAlpha = .3; waterAlphaMin = .3; waterAlphaMax = .3;
		waterFade = 0;
		
		ww.waterBank += 32 * 8;
		ww.zoneProgMax = 100;
		
		boil = true;
	}
	
	if(ww.zone == "TV Time"){
		fallCDMax = 5;
	}
	
	
	
	if(ww.zone == "Endless"){
		waterCol1 = choose(c_aqua, c_fuchsia, c_lime, c_yellow); 
		waterCol2 = waterCol1 ; 
		waterCol3 = choose(c_blue, c_purple, c_green); 
		waterCol4 = waterCol3 ;
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