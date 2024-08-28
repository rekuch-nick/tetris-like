if(ww.state != State.play){ return; }



thinkCD --;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	
	xSpot --;
	ySpot = clamp(ySpot + choose(-1, 0, 1), 3, 17);
	
	if(xSpot < 0){
		instance_destroy();
		return;
	}
	
	
}




if(ww.activeBlock != noone){
	for(var a=0; a<ww.activeBlock.wid; a++){
		for(var b=0; b<ww.activeBlock.hei; b++){
			var aa = a + ww.activeBlock.xSpot;
			var bb = b + ww.activeBlock.ySpot;
			if(inBounds(aa, bb)){
				if(aa == xSpot && bb == ySpot){
					ww.fruit += val;
					instance_create_depth(pa.x + xSpot * 32, pa.y + ySpot * 32, -900, effBlockRemove);
					instance_destroy();
				}
			}
		}
	}
}