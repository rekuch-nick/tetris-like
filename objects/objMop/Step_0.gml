if(ww.state != State.play){ return; }



timeCD --;
if(timeCD < 1){
	timeCD = 4;
	
	if(charges > 0){
		charges --;
		if(cordInWater(ySpot)){
			ww.waterBank --;
			
	
			if(ww.bmap[xSpot, ySpot - 1] == noone){
				ww.bmap[xSpot, ySpot] = noone;
				ySpot --;
				ww.bmap[xSpot, ySpot] = id;
			}
	
		}
	} else {
		ww.bmap[xSpot, ySpot] = noone;
		dropCol(xSpot, ySpot, ySpot - 2);
		instance_destroy();
	}
	
}
	
	

