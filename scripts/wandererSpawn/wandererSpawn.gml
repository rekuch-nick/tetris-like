function wandererSpawn(){
	
	if(instance_number(objWanderer) < 1){
		if(irandom_range(1, 4) == 1){
			
			var tries = 0;
			while(tries < 100){
				tries ++;
				var a = choose(0, 13);
				var b = irandom_range(7, 17);
				
				if(ww.bmap[a, b] == noone && !blockCollidesPoint(ww.activeBlock, a, b)){
					ww.bmap[a, b] = instance_create_depth(pa.x + a * 32, pa.y + b * 32, -700, objWanderer);
					ww.bmap[a, b].xSpot = a;
					ww.bmap[a, b].ySpot = b;
					
					return;
				}
				
			}
			
		}
	}
	
	

}