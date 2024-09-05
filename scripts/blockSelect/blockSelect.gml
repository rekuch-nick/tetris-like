function blockSelect(){
	
	
	
	if(ww.zone == "Farm"){
		
		if(ww.specBlockIncoming == noone){
		
			if(ww.pSPawn > 5){
				ww.pSPawn = 0;
				ww.specBlockIncoming = imgBlockSeed;
			} else {
				if(irandom_range(1, 8) == 1){ ww.specBlockIncoming = imgBlockFox01; }
				if(irandom_range(1, 20) == 1){ww. specBlockIncoming = imgBlockSun; }
				
			}
		}
		if(ww.foxBucks >= 7 && irandom_range(1, 4) == 1){ 
			ww.specBlockIncoming = imgBlockChicken; 
		}
		
		
		
		
		
	} else if(ww.zone == "Plain"){
		specBlockIncoming = noone;
		
	} else if(ww.zone == "Fish Tank"){
		if(ww.pSPawn > 5){
			ww.pSPawn = irandom_range(0, 1);
			ww.specBlockIncoming = imgBlockFish;
		}
	
	} else if(ww.zone == "Rad Dump"){
		if(ww.pSPawn > 8){
			ww.pSPawn = irandom_range(0, 2);
			ww.specBlockIncoming = imgBlockRadWaste;
		}
		
	} else if(ww.zone == "Pond"){
			if(irandom_range(1, 5) == 1){
				ww.specBlockIncoming = imgBlockBub;
			}
			if(ww.pSPawn > 19){
				ww.pSPawn = irandom_range(0, 4);
				ww.specBlockIncoming = imgBlockMopHead;
			}
		
		
	} else if(ww.zone == "Mine"){
		
		ww.specBlockIncoming = imgBlockRock;
		if(ww.pSPawn > 7){
			ww.pSPawn = irandom_range(0, 2);
			ww.specBlockIncoming = imgBlockDrillBit;
		}
		
	
	} else if(ww.zone == "Bait Shop"){
		
		if(ww.pSPawn > 8){
			ww.pSPawn = irandom_range(0, 2);
			ww.specBlockIncoming = imgBlockWorm01;
		} else if(irandom_range(1, 4) == 1){
			ww.specBlockIncoming = imgBlockFish2;
		}
		
		
	} else if(ww.zone == "Match 3"){
		
		ww.specBlockIncoming = imgBlockMatch01;
			
		if(ww.pSPawn > 21){
			ww.pSPawn = irandom_range(0, 3);
			ww.specBlockIncoming = imgBlockMatchWild;
		}
			
		
	
	} else if(ww.zone == "Frost Fade"){
		
		ww.specBlockIncoming = imgBlockIce;
			
			
		if(ww.pSPawn > 13){
			ww.pSPawn = irandom_range(0, 3);
			ww.specBlockIncoming = ww.unitClipboard;
			ww.unitClipboard = ww.unitClipboard == imgBlockWitch ? imgBlockSun : imgBlockWitch;
		}
		
	
	} else if(ww.zone == "Grassland"){
		if(ww.pSPawn > 12){
			ww.pSPawn = irandom_range(0, 6);
			ww.specBlockIncoming = imgBlockCarrot;
		}	
		
	} else if(ww.zone == "Black Gold"){
			if(irandom_range(1, 4) == 1){ ww.specBlockIncoming = imgBlockOil; }
			if(irandom_range(1, 10) == 1){ ww.specBlockIncoming = imgBlockCoal; }
		
	} else if(ww.zone == "Zoo"){
		
	} else if(ww.zone == "Day Labor"){
		
		if(ww.pSPawn > 3){
			ww.pSPawn = irandom_range(0, 1);
			ww.specBlockIncoming = imgBlockUnbreakable;
		}
		
		
		
	} else if(ww.zone == "Fun Zone"){
		
		if(irandom_range(1, 7) == 1){ 
			ww.specBlockIncoming = ww.unitClipboard;
			ww.unitClipboard = ww.unitClipboard == imgBlockClampL ? imgBlockClampR: imgBlockClampL;
		}
		if(irandom_range(1, 4) == 1){ ww.specBlockIncoming = imgBlockUp; }
		if(ww.pSPawn > 17){
			ww.pSPawn = irandom_range(0, 1);
			ww.specBlockIncoming = imgNeedle;
		}
		
		
	} else if (ww.zone == "Frog Or ?"){
		ww.specBlockIncoming = imgFrog;
		
		
		
		
	} else if (ww.zone == "Hot Pot"){
		if(irandom_range(1, 3) == 1){ ww.specBlockIncoming = imgBlockFish2; }
		
		
	} else if (ww.zone == "This Side"){
		if(irandom_range(1, 6) == 1){ ww.specBlockIncoming = imgBlockSeed; }
		if(irandom_range(1, 6) == 1){ ww.specBlockIncoming = imgBlockThisSideUp; }
		
		
	} else if (ww.zone == "TV Time"){
		ww.specBlockIncoming = imgBlockStatic;
	
		
	} else {
		if(array_length(ww.spawnArray) < 1){ return; }
		
		//endless
		if(irandom_range(1, 4) == 1){
			ww.specBlockIncoming = ww.spawnArray[irandom_range(0, array_length(ww.spawnArray) - 1)];
		}
	
		
	}
	
	
	

}