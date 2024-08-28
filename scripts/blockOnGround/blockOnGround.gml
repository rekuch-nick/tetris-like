function blockOnGround(blo){ with(blo){ 
	
	
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){
		if(map[a, b] == noone){ continue; }
		var aa = xSpot + a;
		var bb = ySpot + b;
		if(!inBounds(aa, bb + 1)){ return true; }
		if(ww.bmap[aa, bb + 1] != noone){ return true; }
		
	}}
	
	
	return false;

}}