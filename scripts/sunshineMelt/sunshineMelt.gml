function sunshineMelt(){
	if(ww.activeBlock == noone){ return; }
	if(ww.activeBlock.map[0, 0] != imgBlockSun){ return; }
	
	var aa = ww.activeBlock.xSpot;
	var bb = ww.activeBlock.ySpot;
	for(var a=aa-2; a<=aa+2; a++){
		for(var b=bb-2; b<=bb+2; b++){
			if(!inBounds(a, b)){ continue; }
			if(ww.bmap[a, b] == noone){ continue; }
			if(ww.bmap[a, b].sprite_index = imgBlockIce){
				scoreBlock(a, b);
				dropCol(a, b, 0);
				ww.waterBank += 4;
			}
		}
	}
	
	
}