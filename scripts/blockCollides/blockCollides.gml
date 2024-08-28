function blockCollides(blo){
	if(blo == noone){ return false; }
	
	for(var a=0; a<blo.wid; a++){
		for(var b=0; b<blo.hei; b++){
			var aa = a + blo.xSpot;
			var bb = b + blo.ySpot;
			
			if(blo.map[a, b] != noone){
				if(!inBounds(aa, bb)){ return true; }
				if(ww.bmap[aa, bb] != noone){ return true; }
			}
		}
	}
	
	return false;

}