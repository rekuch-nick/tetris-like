function witchRow(b){
	
	if(cordInWater(b)){ return; }
	
	for(var a=0; a<14; a++){
		if(ww.bmap[a, b] != noone){
			instance_destroy(ww.bmap[a, b]);
			ww.bmap[a, b] = noone;
		}
		if(choose(true, false)){
			ww.bmap[a, b] = instance_create_depth(pa.x + a * 32, pa.y + b * 32, -300, objMapBlock);
			ww.bmap[a, b].sprite_index = imgBlockWitch;
		}
	}
}