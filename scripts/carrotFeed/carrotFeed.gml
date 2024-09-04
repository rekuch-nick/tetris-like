function carrotFeed(){
	if(ww.activeBlock == noone){ return; }
	if(ww.activeBlock.map[0, 0] != imgBlockCarrot){ return; }
	
	
	var aa = ww.activeBlock.xSpot;
	var bb = ww.activeBlock.ySpot;
	for(var a=aa-1; a<=aa+1; a++){
		for(var b=bb-1; b<=bb+1; b++){
			if(!inBounds(a, b)){ continue; }
			if(ww.bmap[a, b] == noone){ continue; }
			if(ww.bmap[a, b].sprite_index = imgBlockHorse){
				scoreBlock(a, b);
				instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effCarrot);
			} else if(ww.bmap[a, b].sprite_index = imgBlockHorseWhite){
				scoreBlock(a, b);
				ww.bmap[a, b] = instance_create_depth(pa.x + a * 32, pa.y + b * 32, -700, objHorseWild);
				instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effCarrot);
			}
		}
	}

}