if(ww.state != State.play){ return; }
if(xSpot >= 12){ return; }

thinkCD --;
if(thinkCD < 1){
	thinkCD = 10;
	
	
	
	var inRow = false;
	for(var a=xSpot + 1; a<14; a++){
		if(ww.bmap[a, ySpot] != noone && ww.bmap[a, ySpot].sprite_index == imgBlockClampR){
			inRow = true;
		}
	}
	if(!inRow){ return; }
	
	
	if(xSpot < 12){
		
		
		
		if(ww.bmap[xSpot + 1, ySpot] != noone && ww.bmap[xSpot + 1, ySpot].sprite_index == imgBlockClampR){
			scoreBlock(xSpot, ySpot);
			scoreBlock(xSpot + 1, ySpot);
			dropCol(xSpot + 1, ySpot, 0);
			dropCol(xSpot, ySpot, 0);
		} else {
			
			
			scoreBlock(xSpot + 1, ySpot);
			
			ww.bmap[xSpot, ySpot] = noone;
			xSpot ++;
			ww.bmap[xSpot, ySpot] = id;
			
			dropCol(xSpot - 1, ySpot, 0);
		}
	}
	
	
	
}



