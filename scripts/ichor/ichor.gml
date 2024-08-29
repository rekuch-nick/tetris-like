function ichor(){
	var ickCount = 0;
	var ickMax = 30;
	
	for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
		if(ww.bmap[a, b] != noone && ww.bmap[a, b].sprite_index == imgBlockIchor){
			ickCount ++;
		}
	}}
	
	var tries = 0;
	if(ickCount == 0){
		while(tries < 20){
			tries ++;
			var a = irandom_range(0, 13);
			if(ww.bmap[a, 17] != noone && ww.bmap[a, 17].standardBlock){
				ww.bmap[a, 17].sprite_index = imgBlockIchor;
				ww.bmap[a, 17].standardBlock = false;
				return;
			}
		}
	} else if(ickCount < ickMax){
		while(tries < 200){
			tries ++;
			var a = irandom_range(0, 13);
			var b = irandom_range(0, 17);
			if(ww.bmap[a, b] != noone && ww.bmap[a, b].standardBlock && adjacentTo(a, b, imgBlockIchor)){
				ww.bmap[a, b].sprite_index = imgBlockIchor;
				ww.bmap[a, b].standardBlock = false;
				return;
			}
		}
	}
	
}