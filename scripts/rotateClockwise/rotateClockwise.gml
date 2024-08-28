function rotateClockwise(blo) {
	
	var arr = blo.map;
	var hei = blo.hei;
	var wid = blo.wid;
    var rotated = [];
    

    for(var b=0; b<hei; ++b){
        for(var a=0; a<wid; ++a){
            rotated[b][wid - 1 - a] = arr[a][b];
        }
    }
	
	blo.map = rotated;
	
	if(blockCollides(blo)){
		if(blo.xSpot < 2){ blo.xSpot ++; }
		else if(blo.xSpot > 11){ blo.xSpot --; }
		else { rotateClockwise(blo); }
	}
    
	
	
}

