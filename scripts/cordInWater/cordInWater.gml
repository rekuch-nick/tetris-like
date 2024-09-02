function cordInWater(bb){
	if(ww.waterLevel < 1){ return false; }
	
	var blocksOfWater = ceil(ww.waterLevel / 32);
	var yOfWater = 17 - blocksOfWater;
	return yOfWater < bb;
}