if(ww.state != State.play){ return; }



thinkCD --;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	
	xt = xSpot + dir;
	if(!inBounds(xt, ySpot)){
		ww.bmap[xSpot, ySpot] = noone;
		instance_destroy();
		return;
	}
	
	if(ww.bmap[xt, ySpot] != noone){
		instance_destroy(ww.bmap[xt, ySpot]);
		ww.bmap[xt, ySpot] = noone;
	}
	
	if(ww.activeBlock != noone){
		if(ww.activeBlock.xSpot == xt && ww.activeBlock.ySpot == ySpot){
			instance_destroy(ww.activeBlock);
			ww.activeBlock = noone;
		} else if(ww.activeBlock.xSpot == xSpot && ww.activeBlock.ySpot == ySpot){
			instance_destroy(ww.activeBlock);
			ww.activeBlock = noone;
		}
	}
	
	ww.bmap[xSpot, ySpot] = noone;
	xSpot = xt;
	ww.bmap[xSpot, ySpot] = id;
	
}