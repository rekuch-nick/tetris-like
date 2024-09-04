function waterRise(dir){
	
	waterBank += -dir;
	if(dir > 0 && waterLevel / 32 == floor(waterLevel / 32)){
		var b = 17 - floor(waterLevel / 32);
		for(var a=0; a<14; a++){
			if(ww.bmap[a, b] != noone){
				if(ww.bmap[a, b].sprite_index == imgBlockIchor){
					instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effBlockRemove);
					ww.bmap[a, b].sprite_index = imgBlockClean;
				}
			}
		}
		
		
		
		
	}
	waterLevel = clamp(waterLevel + dir, 0, pa.sprite_height);
	if(waterLevel == 0 && waterBank < 0){ waterBank = 0; }
	if(waterLevel >= pa.sprite_height && waterBank > 0){ waterBank = 0; }
}