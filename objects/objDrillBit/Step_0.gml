if(ww.state != State.play){ return; }


timeCD ++;
if(timeCD > 60){
	ww.bmap[xSpot, ySpot] = noone;
	cellDrop(xSpot, ySpot);
	cellDrop(xSpot, ySpot-1);
	
	for(var b=17; b>ySpot-2; b--){
	//for(var b=ySpot; b>0; b--){
		cellDrop(xSpot, b);
	}
	//cellDrop(xSpot, ySpot);
	//cellDrop(xSpot, ySpot-1);
	instance_destroy();
	
	with(objWorld){
		rowCheck();
	}
}