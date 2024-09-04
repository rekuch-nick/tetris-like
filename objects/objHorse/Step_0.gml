if(ww.state != State.play){ return; }

thinkCD --;
if(thinkCD < 1){
	thinkCD = 15;
	
	xt = xSpot + dir;
	yt = ySpot;
	
	if(irandom_range(1, 40) == 1){
		yt += choose(-1, 1);
		yt = clamp(yt, 7, 17);
	}
	
	if(inBounds(xt, yt) && !blockCollidesPoint(ww.activeBlock, xt, yt) ){
		
		if(ww.bmap[xt, yt] != noone){
			ww.bmap[xt, yt].xSpot = xSpot;
			ww.bmap[xt, yt].ySpot = ySpot;
		}
		
		ww.bmap[xSpot, ySpot] = ww.bmap[xt, yt];
		
		xSpot = xt;
		ySpot = yt;
		ww.bmap[xt, yt] = id;
		
	} else {
		dir *= -1;
	}
	
	
}



