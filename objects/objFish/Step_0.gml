if(ww.state != State.play){ return; }



if(ww.ms == 0){
	
	var ded = false;
	if(isWorm(xSpot - 1, ySpot)){ ded = true; }
	if(isWorm(xSpot + 1, ySpot)){ ded = true; }
	if(isWorm(xSpot, ySpot - 1)){ ded = true; }
	if(isWorm(xSpot, ySpot + 1)){ ded = true; }
	if(isWorm(xSpot + 1, ySpot + 1)){ ded = true; }
	if(isWorm(xSpot + 1, ySpot - 1)){ ded = true; }
	if(isWorm(xSpot - 1, ySpot + 1)){ ded = true; }
	if(isWorm(xSpot - 1, ySpot - 1)){ ded = true; }
	
	
	if(cordInWater(ySpot)){
		timeOutOfWater = 0;
		image_speed = 0;
		image_index = 0;
	} else {
		timeOutOfWater ++;
		image_speed = 5;
		if(timeOutOfWater > 10){ ded = true; }
	}
	
	if(ded){
		instance_create_depth(pa.x + 32 * xSpot, pa.y * ySpot * 32, -800, effDeadFish);
		instance_create_depth(x, y, -800, effDeadFish);
		ww.bmap[xSpot, ySpot] = noone;
		instance_destroy();
	}
	
	
}
