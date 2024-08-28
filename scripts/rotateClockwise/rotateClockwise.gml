function rotateClockwise(blo) {
	
	var arr = blo.map;
	var hei = blo.hei;
	var wid = blo.wid;
	
	
	
    
    
    // Create new array for the rotated result
    var rotated = [];
    
    // Perform the rotation
    for (var b = 0; b < hei; ++b)
    {
        for (var a = 0; a < wid ; ++a)
        {
            rotated[b][3 - 1 - a] = arr[a][b];
        }
    }
	
	blo.map = rotated;
	
	if(blockCollides(blo)){
		if(blo.xSpot < 2){ blo.xSpot ++; }
		else if(blo.xSpot > 11){ blo.xSpot --; }
		else { rotateClockwise(blo); }
	}
    
	
	
}

