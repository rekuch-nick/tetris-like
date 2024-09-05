function zoneStuff(){
	
	if(ww.zone == "Farm"){
		
		
	} else if(ww.zone == "Plain"){	
		
	} else if(ww.zone == "Fish Tank"){
		
	
	} else if(ww.zone == "Rad Dump"){
		
		
	} else if(ww.zone == "Pond"){
		
		
	} else if(ww.zone == "Mine"){
		
	
	} else if(ww.zone == "Bait Shop"){
		
		
	} else if(ww.zone == "Match 3"){
		
	
	} else if(ww.zone == "Frost Fade"){
		
	
	} else if(ww.zone == "Grassland"){
		if(ww.waterLevel > 0){ww.waterBank --; }
		if(sc % 7 == 0){ horseSpawn(); }
		
		
	} else if(ww.zone == "Black Gold"){
		if(sc % 7 == 0 && irandom_range(1, 4) == 1){ wandererSpawn(); }
		
		
	} else if(ww.zone == "Zoo"){
		
	} else if(ww.zone == "Day Labor"){
		if(sc % 11 == 0){ instance_create_depth(room_width, 100, -600, objCherry); }
		
		
		
	} else if(ww.zone == "Fun Zone"){
		
		
	} else if (ww.zone == "Frog Or ?"){
		
		repeat(choose(2, 3)){
			var b = choose(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17);
			var a = b % 2 == 0 ? 0 : 13;
			if(ww.bmap[a, b] == noone){
				ww.bmap[a, b] = instance_create_depth(pa.x + a * 32, pa.y + b * 32, -600, objCar);
			}
		}
		
		
	} else if (ww.zone == "Hot Pot"){
		
		
	} else if (ww.zone == "This Side"){
		
		
	} else if (ww.zone == "TV Time"){
		
	
		
	} else {
		
		
		//endless
		
		if(ww.fruitsMatter && sc % 8 == 0 && irandom_range(1, 2) == 1){ instance_create_depth(room_width, 100, -600, objCherry); }
		if(sc % 15 == 0 && irandom_range(1, 12) == 1){ wandererSpawn(); }
		if(sc % 15 == 0 && irandom_range(1, 3) == 1){ ww.waterBank += choose(32, 32, 64); }
	
		
		
	
	
		
	}
	
	
	if(canMatch3){ checkMatch3(); }
	
	//spec bloc steps
	if(activeBlock != noone && activeBlock.map[0, 0] == imgBlockSun){
		for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
			if(bmap[a, b] != noone && bmap[a, b].sprite_index == imgBlockTreeTop){
				if(choose(true, false)){
					bmap[a, b].grows ++;
				}
			}
		}}
	}
	
	if(boil){
		for(var b=10; b<18; b++){
			if(!cordInWater(b)){ continue; }
			for(var a=0; a<14; a++){
				if(ww.bmap[a, b] != noone){
					if(ww.bmap[a, b].sprite_index == imgBlockFish){ continue; }
					if(ww.bmap[a, b].sprite_index == imgBlockFish2){ continue; }
					instance_create_depth(8 + pa.x + a * 32, 8 + pa.y + b * 32, -800, effDisolve);
					instance_create_depth(8 + pa.x + a * 32, 24 + pa.y + b * 32, -800, effDisolve);
					instance_create_depth(24 + pa.x + a * 32, 8 + pa.y + b * 32, -800, effDisolve);
					instance_create_depth(24 + pa.x + a * 32, 24 + pa.y + b * 32, -800, effDisolve);
					instance_destroy(ww.bmap[a, b]);
					ww.bmap[a, b] = noone;
				}
			}
		}
	}

}