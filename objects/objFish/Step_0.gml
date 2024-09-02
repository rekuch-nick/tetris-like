if(ww.state != State.play){ return; }



if(ww.ms == 0){
	
	if(cordInWater(ySpot)){
		timeOutOfWater = 0;
		image_speed = 0;
		image_index = 0;
	} else {
		timeOutOfWater ++;
		image_speed = 5;
		
		if(timeOutOfWater > 10){
			instance_create_depth(pa.x + 32 * xSpot, pa.y * ySpot * 32, -800, effDeadFish);
			instance_create_depth(x, y, -800, effDeadFish);
			ww.bmap[xSpot, ySpot] = noone;
			instance_destroy();
		}
	}
	
	
}
