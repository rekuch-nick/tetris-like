function zoneStuff(){
	
	if(ww.zone == "Farm"){
		
		if(specBlockIncoming == noone){
		
			if(pSPawn > 5){
				pSPawn = 0;
				specBlockIncoming = imgBlockSeed;
			} else {
				if(irandom_range(1, 8) == 1){ specBlockIncoming = imgBlockFox01; }
				if(irandom_range(1, 20) == 1){ specBlockIncoming = imgBlockSun; }
				if(ww.foxBucks >= 7 && irandom_range(1, 4) == 1){ 
					specBlockIncoming = imgBlockChicken; 
				}
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
		
	} else if(ww.zone == "Zoo"){
		
	} else if(ww.zone == "Day Labor"){
		if(sc % 11 == 0){ instance_create_depth(room_width, 100, -600, objCherry); }
		if(specBlockIncoming == noone){
			if(pSPawn > 3){
				pSPawn = irandom_range(0, 1);
				specBlockIncoming = imgBlockUnbreakable;
			}
		}
		
		
	} else if(ww.zone == "Fun Zone"){
		if(specBlockIncoming == noone){
			if(irandom_range(1, 7) == 1){ 
				specBlockIncoming = unitClipboard;
				unitClipboard = unitClipboard == imgBlockClampL ? imgBlockClampR: imgBlockClampL;
			}
			if(irandom_range(1, 4) == 1){ specBlockIncoming = imgBlockUp; }
			if(pSPawn > 17){
				pSPawn = irandom_range(0, 1);
				specBlockIncoming = imgNeedle;
			}
		}
		
	} else if (ww.zone == "Frog Or ?"){
		specBlockIncoming = imgFrog;
		
		repeat(choose(2, 3)){
			var b = choose(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17);
			var a = b % 2 == 0 ? 0 : 13;
			if(ww.bmap[a, b] == noone){
				ww.bmap[a, b] = instance_create_depth(pa.x + a * 32, pa.y + b * 32, -600, objCar);
			}
		}
		
		
	} else {
		if(array_length(spawnArray) < 1){ return; }
		
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