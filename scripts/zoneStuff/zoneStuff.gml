function zoneStuff(){
	
	if(ww.zone == "Farm"){
		
		if(specBlockIncoming == noone){
		
			if(pSPawn > 10){
				pSPawn -= irandom_range(0, pSPawn);
				specBlockIncoming = imgBlockSeed;
			} else if(irandom_range(1, 8) == 1){
				specBlockIncoming = imgBlockFox01;
			} else if(irandom_range(1, 13) == 1){
				specBlockIncoming = imgBlockChicken;
			} else if(irandom_range(1, 20) == 1){
				specBlockIncoming = imgBlockSun;
			}
		}
		
		
		
		
		
	} else if(ww.zone == "Plain"){
		specBlockIncoming = noone;
		
	} else if(ww.zone == "Fish Tank"){
		if(pSPawn > 5){
			pSPawn = irandom_range(0, 1);
			specBlockIncoming = imgBlockFish;
		}
	
	} else if(ww.zone == "Rad Dump"){
		if(pSPawn > 8){
			pSPawn = irandom_range(0, 2);
			specBlockIncoming = imgBlockRadWaste;
		}
		
	} else if(ww.zone == "Pond"){
		if(specBlockIncoming == noone){
			if(irandom_range(1, 5) == 1){
				specBlockIncoming = imgBlockBub;
			}
		
			if(pSPawn > 19){
				pSPawn = irandom_range(0, 4);
				specBlockIncoming = imgBlockMopHead;
			}
		}
		
	} else if(ww.zone == "Mine"){
		if(specBlockIncoming == noone){
			specBlockIncoming = imgBlockRock;
			if(pSPawn > 7){
				pSPawn = irandom_range(0, 2);
				specBlockIncoming = imgBlockDrillBit;
			}
		}
	
	} else if(ww.zone == "Bait Shop"){
		if(specBlockIncoming == noone){
			if(pSPawn > 8){
				pSPawn = irandom_range(0, 2);
				specBlockIncoming = imgBlockWorm01;
			} else if(irandom_range(1, 4) == 1){
				specBlockIncoming = imgBlockFish2;
			}
		}
		
	} else if(ww.zone == "Match 3"){
		if(specBlockIncoming == noone){
			specBlockIncoming = imgBlockMatch01;
			
			if(pSPawn > 21){
				pSPawn = irandom_range(0, 3);
				specBlockIncoming = imgBlockMatchWild;
			}
			
		}
	
	} else if(ww.zone == "Frost Fade"){
		if(specBlockIncoming == noone){
			specBlockIncoming = imgBlockIce;
			
			
			if(pSPawn > 13){
				pSPawn = irandom_range(0, 3);
				specBlockIncoming = unitClipboard;
				unitClipboard = unitClipboard == imgBlockWitch ? imgBlockSun : imgBlockWitch;
			}
		}
	
	} else if(ww.zone == "Grassland"){
		if(ww.waterLevel > 0){ww.waterBank --; }
		if(sc % 7 == 0){ horseSpawn(); }
		if(specBlockIncoming == noone){
			if(pSPawn > 12){
				pSPawn = irandom_range(0, 6);
				specBlockIncoming = imgBlockCarrot;
			}	
		}
		
	} else if(ww.zone == "Black Gold"){
		if(sc % 7 == 0 && irandom_range(1, 4) == 1){ wandererSpawn(); }
		if(specBlockIncoming == noone){
			if(irandom_range(1, 4) == 1){ specBlockIncoming = imgBlockOil; }
			if(irandom_range(1, 10) == 1){ specBlockIncoming = imgBlockCoal; }
		}
		
		
	} else {
		//endless
		
		if(ww.fruitsMatter && sc % 8 == 0 && irandom_range(1, 2) == 1){ instance_create_depth(room_width, 100, -600, objCherry); }
		if(sc % 15 == 0 && irandom_range(1, 12) == 1){ wandererSpawn(); }
		if(sc % 15 == 0 && irandom_range(1, 3) == 1){ ww.waterBank += choose(32, 32, 64); }
	
		
		if(irandom_range(1, 4) == 1){
			specBlockIncoming = spawnArray[irandom_range(0, array_length(spawnArray) - 1)];
		}
	
	
		
	}
	
	
	if(canMatch3){ checkMatch3(); }
	
	//spec bloc steps
	if(activeBlock != noone && activeBlock.map[0, 0] == imgBlockSun){
		for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
			if(bmap[a, b] != noone && bmap[a, b].sprite_index == imgBlockTreeTop){
				if(choose(true, false)){
					bmap[a, b].grows ++;
				}
			}
		}}
	}
	
	

}