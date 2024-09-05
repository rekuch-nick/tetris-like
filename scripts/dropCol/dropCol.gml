function dropCol(x1, y11, y22){
	var y1 = min(y11, y22);
	var y2 = max(y11, y22);
	
	
	if(!inBounds(x1, y1)){ return; }
	if(!inBounds(x1, y2)){ return; }
	
	
	
	if(ww.bmap[x1, y2] != noone){
		instance_destroy(ww.bmap[x1, y2]);
		ww.bmap[x1, y2] = noone;
	}
	
	
	for(var b=y2; b>y1; b--){
		ww.bmap[x1, b] = ww.bmap[x1, b - 1];
		if(ww.bmap[x1, b] != noone){
			ww.bmap[x1, b].ySpot ++;
		}
	}
	
	ww.bmap[x1, y1] = noone;
	
}