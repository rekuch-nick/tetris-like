if(ww.state != State.play){ return; }


moveCD --;
if(moveCD < 1){
	
	var canMove = adjacentTo(xSpot, ySpot, noone) && !blockCollides(ww.activeBlock);
	if(canMove){
		
		do{
			var a = xSpot + choose(-1, 0, 1);
			var b = ySpot + choose(-1, 0, 1);
			b = clamp(b, 5, 17);
		} until (inBounds(a, b) && ww.bmap[a, b] == noone && !blockCollidesPoint(ww.activeBlock, a, b));
		ww.bmap[xSpot, ySpot] = noone;
		ww.bmap[a, b] = id;
		xSpot = a; ySpot = b;
		
	}
	moveCD = moveCDMax;
	if(fastSteps > 0){
		fastSteps --;
		moveCD = moveCDFast;
	} else {
		fastSteps = irandom_range(3, 6);
	}
	
	
}