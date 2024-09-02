function convertOneTileOfBlock(t){
	
	var tries = 0;
	while(tries < 100){
		tries ++;
	
		var a = irandom_range(0, wid - 1);	
		var b = irandom_range(0, hei - 1);	
		if(map[a, b] != noone && map[a, b] != t){
			map[a, b] = t;
			return;
		}
		
	}

}


function convertAllTilesOfBlock(t){
	
	
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){	
		if(map[a, b] != noone){
			map[a, b] = t;
		}
	}}
	

}