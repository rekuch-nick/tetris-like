xSpot = -1; ySpot = -1;
sprite_index = choose(imgBlock, imgBlock02, imgBlock03, imgBlock04);



wid = 3;
hei = 3;

canTurn = true;


var r = irandom_range(0, 7);
var spec = 0;
if(irandom_range(1, 5) == 1){ spec = 1; }

if(ww.specBlockIncoming == imgBlockDrillBit){
	ww.specBlockIncoming = noone;
	canTurn = false;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[1, 0] = imgBlockDrill;
	map[1, 1] = imgBlockDrill;
	map[1, 2] = imgBlockDrillBit;
	
}else if(ww.specBlockIncoming == imgBlockSeed){
	ww.specBlockIncoming = noone;
	wid = 1;
	hei = 1;
	map[0, 0] = imgBlockSeed;
	
} else if(r == 0){
	//wid = 2;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[1, 0] = sprite_index;
	map[2, 0] = sprite_index;
	map[0, 1] = sprite_index;
	map[1, 1] = sprite_index;
} else if(r == 1){
	//wid = 2;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[0, 0] = sprite_index;
	map[1, 0] = sprite_index;
	map[1, 1] = sprite_index;
	map[2, 1] = sprite_index;
} else if(r == 2){
	wid = 2;
	hei = 2;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[0, 0] = sprite_index;
	map[1, 0] = sprite_index;
	map[0, 1] = sprite_index;
	map[1, 1] = sprite_index;
} else if(r == 3){
	//wid = 1;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[1, 0] = sprite_index;
	map[1, 1] = sprite_index;
	map[1, 2] = sprite_index;
} else if(r == 4){
	//hei = 2;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[1, 0] = sprite_index;
	map[0, 1] = sprite_index;
	map[1, 1] = sprite_index;
	map[2, 1] = sprite_index;
	
} else if(r == 5){
	//hei = 2;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[0, 0] = sprite_index;
	map[0, 1] = sprite_index;
	map[1, 1] = sprite_index;
	map[2, 1] = sprite_index;
	
} else if(r == 6){
	//hei = 2;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[2, 0] = sprite_index;
	map[0, 1] = sprite_index;
	map[1, 1] = sprite_index;
	map[2, 1] = sprite_index;
	
	
} else {
	wid = 1;
	hei = 1;
	map[0, 0] = sprite_index;
}

//map[0, 0] = imgBlock02;