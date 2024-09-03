function checkMatch3(){
	
	checkMatch3Impl();
	for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
		if(amap[a, b] == 1){
			scoreBlock(a, b);
			
			
			/*for(var aa=a-1; aa<=a+1; aa++){
				for(var bb=b-1; bb<=b+1; bb++){
					if(inBounds(aa, bb)){
						if(ww.bmap[aa, bb] != noone){
							ww.bmap[aa, bb].loose = true;
						}
					}
				}
			}*/
		}
	}}
	
	
}

function checkMatch3Impl() {
	//set action array
	for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
		amap[a, b] = 0;
	}}
	
	//check rows  & mark for del
	for(var b=0; b<18; b++){
		for(var a=2; a<14; a++){
			var t1 = ww.bmap[a-2, b] == noone ? noone : ww.bmap[a-2, b].sprite_index;
			var t2 = ww.bmap[a-1, b] == noone ? noone : ww.bmap[a-1, b].sprite_index;
			var t3 = ww.bmap[a, b] == noone ? noone : ww.bmap[a, b].sprite_index;
			
			if(t1 != noone && t1 == t2 && t1 == t3 && isMatch3Block(t1) ){
				amap[a-2, b] = 1; amap[a-1, b] = 1; amap[a, b] = 1;
			}
		}
	}
	
	//check cols & mark for del
	for(var a=0; a<14; a++){
		for(var b=2; b<18; b++){
			var t1 = ww.bmap[a, b-2] == noone ? noone : ww.bmap[a, b-2].sprite_index;
			var t2 = ww.bmap[a, b-1] == noone ? noone : ww.bmap[a, b-1].sprite_index;
			var t3 = ww.bmap[a, b] == noone ? noone : ww.bmap[a, b].sprite_index;
			
			if(t1 != noone && t1 == t2 && t1 == t3 && isMatch3Block(t1) ){
				amap[a, b-2] = 1; amap[a, b-1] = 1; amap[a, b] = 1;
			}
		}
	}
	
	//check for Ls
	for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
		for(var aa=a-1; aa<=a+1; aa++){	for(var bb=b-1; bb<=b+1; bb++){
			if(inBounds(aa, bb) && bmap[a, b] != noone && bmap[aa, bb] != noone){
				if(amap[a, b] == 1){
					if(aa == a || bb == b){
						if(ww.bmap[a, b].sprite_index == ww.bmap[aa, bb].sprite_index){
							amap[aa, bb] = 1;
						}
					}
				}
			}
		}}
	}}
	
}


function isMatch3Block(val){
	return val == imgBlockMatch01 || val == imgBlockMatch02 || val == imgBlockMatch03 || val == imgBlockMatch04 || val == imgBlockMatch05;
}