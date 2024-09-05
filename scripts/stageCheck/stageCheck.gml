function stageCheck(autoWin){
	
	
	
	
	
	if(		autoWin || (
			(!ww.fishMatter || ww.fish >= ww.zoneProgMax) &&
			(!ww.fruitsMatter || ww.fruit >= ww.zoneProgMax) &&
			( (ww.stageScore >= ww.zoneProgMax) || !ww.linesMatter) ) ){
		
		
		
	
		if(ww.zoneListIndex < array_length(ww.zoneList) - 1){
			ww.zoneListIndex ++;
			ww.zone = ww.zoneList[ww.zoneListIndex];
		}
	
		zoneSetup();
		
		
		
		
	}
	
	
	
}

