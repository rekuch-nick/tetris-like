if(ww.state != State.play){ return; }

if(heat >= 10){
	for(var a=0; a<14; a++){
		instance_create_depth(pa.x + a * 32, pa.y + (ySpot - 1) * 32, -800, effFire);
		instance_create_depth(pa.x + a * 32, pa.y + (ySpot - 2) * 32, -800, effFire);
		scoreBlock(a, ySpot - 1);
		scoreBlock(a, ySpot);
		dropCol(a, ySpot, 0);
		dropCol(a, ySpot, 0);
	}
}

