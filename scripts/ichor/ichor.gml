function ichor(){
	var ickCount = 0;
	var ickMax = 30;
	
	for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
		if(ww.bmap[a, b] == imgBlockIchor){
			ickCount ++;
		}
	}}
	
	var tries = 0;
	if(ickCount == 0){
		while(tries < 20){
			tries ++;
			var a = irandom_range(0, 13);
			if(isBlock(a, 17)){
				ww.bmap[a, 17] = imgBlockIchor;
				return;
			}
		}
	} else if(ickCount < ickMax){
		while(tries < 200){
			tries ++;
			var a = irandom_range(0, 13);
			var b = irandom_range(0, 17);
			if(isBlock(a, b) && adjacentTo(a, b, imgBlockIchor)){
				ww.bmap[a, b] = imgBlockIchor;
				return;
			}
		}
	}
	
}