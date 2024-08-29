function blockToMap(blo){
	with(blo){
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){
			var aa = xSpot + a; var bb = ySpot + b;
			if(!inBounds(aa, bb)){ continue; }
			if(map[a, b] == noone){ continue; }
			ww.bmap[aa, bb] = instance_create_depth(pa.x + aa * 32, pa.y + bb * 32, -300, objMapBlock);
			ww.bmap[aa, bb].sprite_index = map[a, b];
		}}
		instance_destroy();
	}

}