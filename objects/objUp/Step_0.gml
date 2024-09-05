if(ww.state != State.play){ return; }
if(charges < 1){ return; }

if(ww.ms == 0 && ySpot > 0){
	
	if(ww.bmap[xSpot, ySpot - 1] == noone){
		if(ww.activeBlock == noone || !blockCollidesPoint(ww.activeBlock, xSpot, ySpot - 1) ){
			
			ww.bmap[xSpot, ySpot] = noone;
			ySpot --;
			ww.bmap[xSpot, ySpot] = id;
			
			charges --;
			if(charges < 1){ sprite_index = imgBlockUpSpent; }
		}
	}
	
	
}
