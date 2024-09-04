if(ww.state != State.play){ return; }

thinkCD --;
if(thinkCD < 1){
	thinkCD = 8;
	
	xt = xSpot + dir;
	yt = ySpot;
	
	if(irandom_range(1, 10) == 1){
		yt = clamp(yt + choose(-1, 1, 1), 7, 17);
	}
	
	if(inBounds(xt, yt) && !blockCollidesPoint(ww.activeBlock, xt, yt) ){
		
		var aa = -1;
		if(ww.bmap[xt, yt] != noone){
			charges --;
			scoreBlock(xt, yt);
			aa = xt;
		}
		
		
		
		ww.bmap[xSpot, ySpot] = noone;
		xSpot = xt;
		ySpot = yt;
		ww.bmap[xt, yt] = id;
		
		if(aa != -1){
			dropCol(aa, ySpot - 1, 0);
		}
		
		if(charges < 1){
			scoreBlock(xSpot, ySpot);
		}
		
	} else {
		dir *= -1;
	}
	
	
}



