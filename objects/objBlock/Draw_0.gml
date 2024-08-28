if(ww.activeBlock == id){
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){
		var blo = map[a, b];
		if(blo != noone){
			drawBlock(pa.x + xSpot * 32 + 32 * a, pa.y + ySpot * 32 + 32 * b, blo);
		}
	}}
	
} else if (ww.nextBlock == id){
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){
		var blo = map[a, b];
		if(blo != noone){
			drawBlock(100 + 32 * a, 100 + 32 * b, blo);
		}
	}}
	
}

