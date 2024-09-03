function horseSpawn(){
	
	var n = irandom_range(1, 8);
	if(instance_number(objHorse) > n){ return; }
		
	var tries = 0;
	while(tries < 100){
		tries ++;
		var a = choose(0, 13);
		var b = irandom_range(7, 17);
				
		if(ww.bmap[a, b] == noone && !blockCollidesPoint(ww.activeBlock, a, b)){
			ww.bmap[a, b] = instance_create_depth(pa.x + a * 32, pa.y + b * 32, -700, objHorse);
			ww.bmap[a, b].xSpot = a;
			ww.bmap[a, b].ySpot = b;
					
			return;
		}
				
	}

}