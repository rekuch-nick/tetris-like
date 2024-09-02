if(ww.state != State.play){ return; }

if(ww.ms == 0){
	if(irandom_range(1, 12) == 1){
		scoreBlock(xSpot, ySpot);
	}
}
