if(ww.state != State.play){ return; }


stuckCD = clamp(stuckCD - 1, 0, stuckCD);
if(stuckCD < 1){ loose = true; }

if(loose && ww.ms % 10 == 0 && ySpot < 17){
	
	
	if(ww.bmap[xSpot, ySpot + 1] == noone){
		ww.bmap[xSpot, ySpot] = noone;
		ySpot ++;
		ww.bmap[xSpot, ySpot] = id;
	}
	
	
}
