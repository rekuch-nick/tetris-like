function slideBlock(blo, xx){ with(blo){
	
	xSpot += xx;
	
	if(blockCollides(blo)){
		xSpot -= xx;
	}
	
	
	return true;
	
}}