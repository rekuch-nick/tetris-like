if(ww.state != State.play){ return; }

thinkCD --;
if(thinkCD < 1){
	thinkCD = 15;
	
	xt = xSpot + dir;
	yt = ySpot;
	
	if(irandom_range(1, 20) == 1){
		yt += choose(-1, 1);
		yt = clamp(yt, 7, 17);
	}
	
	if(inBounds(xt, yt) && !blockCollidesPoint(ww.activeBlock, xt, yt) ){
		
		ww.bmap[xSpot, ySpot] = ww.bmap[xt, yt];
		if(ww.bmap[xSpot, ySpot] != noone){
			ww.bmap[xSpot, ySpot].xSpot = xSpot;
			ww.bmap[xSpot, ySpot].ySpot = ySpot;
		}
		xSpot = xt;
		ySpot = yt;
		ww.bmap[xt, yt] = id;
		
	} else {
		dir *= -1;
	}
	
	
}



