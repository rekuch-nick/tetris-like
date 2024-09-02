function blockSplash(){
	if(waterLevel > 0){
		for(var a=0; a<activeBlock.wid; a++){ for(var b=0; b<activeBlock.hei; b++){
			if(activeBlock.map[a, b] == noone){ continue; }
			var aa = activeBlock.xSpot + a;
			var bb = activeBlock.ySpot + b;
	
			var splash = false;
			if(!cordInWater(yLast + b) && cordInWater(bb)){
				splash = true;
			}
		
		
			if(splash){ 
				repeat(6){
					instance_create_depth(pa.x + aa * 32 + 16, pa.y + bb * 32 + 16, -800, effWaterDrop);
				}
			}
		}}
	}
}