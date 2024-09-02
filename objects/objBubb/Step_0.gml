if(ww.state != State.play){ return; }



if(ww.ms == 0 && ySpot > 0){
	
	if(cordInWater(ySpot - 1)){
		if(ww.bmap[xSpot, ySpot - 1] == noone){
			ww.bmap[xSpot, ySpot] = noone;
			ySpot --;
			ww.bmap[xSpot, ySpot] = id;
		}
		
	} else if(!cordInWater(ySpot)){
		scoreBlock(xSpot, ySpot);
	}
	
	
}
