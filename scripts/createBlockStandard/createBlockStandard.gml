function createBlockStandard(){
	
	wid = 3; hei = 3;
	var r = irandom_range(0, 6);
	if(r == 0){ //   backwards two
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[1, 0] = imgBlock07;
		map[2, 0] = imgBlock07;
		map[0, 1] = imgBlock07;
		map[1, 1] = imgBlock07;
	} else if(r == 1){ //two
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[0, 0] = imgBlock;
		map[1, 0] = imgBlock;
		map[1, 1] = imgBlock;
		map[2, 1] = imgBlock;
	} else if(r == 2){ // 2x2 block
		wid = 2; hei = 2;
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[0, 0] = imgBlock02;
		map[1, 0] = imgBlock02;
		map[0, 1] = imgBlock02;
		map[1, 1] = imgBlock02;
	} else if(r == 3){ // line
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[1, 0] = imgBlock03;
		map[1, 1] = imgBlock03;
		map[1, 2] = imgBlock03;
	} else if(r == 4){ //T
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[1, 0] = imgBlock05;
		map[0, 1] = imgBlock05;
		map[1, 1] = imgBlock05;
		map[2, 1] = imgBlock05;
	
	} else if(r == 5){ //backwards L
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[0, 0] = imgBlock06;
		map[0, 1] = imgBlock06;
		map[1, 1] = imgBlock06;
		map[2, 1] = imgBlock06;
	
	} else if(r == 6){ // L
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[2, 0] = imgBlock04;
		map[0, 1] = imgBlock04;
		map[1, 1] = imgBlock04;
		map[2, 1] = imgBlock04;
	
	
	} else {
		wid = 1;
		hei = 1;
		map[0, 0] = sprite_index;
	}
	
	
	
}

