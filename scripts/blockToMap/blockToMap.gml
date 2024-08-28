function blockToMap(blo){
	with(blo){
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){
			var aa = xSpot + a; var bb = ySpot + b;
			if(!inBounds(aa, bb)){ continue; }
			if(map[a, b] == noone){ continue; }
			ww.bmap[aa, bb] = map[a, b];
		}}
		instance_destroy();
	}

}