function createBlockWide(){
	
	wid = 3; hei = 3;
	var r = irandom_range(0, 3);
	if(r == 0){ //   flat
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[1, 0] = imgBlockThisSideUp;
		map[2, 0] = imgBlockThisSideUp;
		map[0, 0] = imgBlockThisSideUp;
	} else if(r == 1){ //L
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[1, 0] = imgBlockThisSideUp;
		map[2, 0] = imgBlockThisSideUp;
		map[0, 0] = imgBlockThisSideUp;
		map[0, 1] = imgBlockThisSideUp;
	} else if(r == 2){ // L backwards
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[1, 0] = imgBlockThisSideUp;
		map[2, 0] = imgBlockThisSideUp;
		map[0, 0] = imgBlockThisSideUp;
		map[2, 1] = imgBlockThisSideUp;
	} else if(r == 3){ // T
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		map[1, 0] = imgBlockThisSideUp;
		map[2, 0] = imgBlockThisSideUp;
		map[0, 0] = imgBlockThisSideUp;
		map[1, 1] = imgBlockThisSideUp;
	} 
	
}

