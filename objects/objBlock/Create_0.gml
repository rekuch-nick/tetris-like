xSpot = -1; ySpot = -1;
sprite_index = choose(imgBlock, imgBlock02, imgBlock03, imgBlock04);



wid = 3; hei = 3;

canTurn = true;
isChicken = false;





if(ww.specBlockIncoming == imgBlockDrillBit){
	ww.specBlockIncoming = noone;
	canTurn = false;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[1, 0] = imgBlockDrill;
	map[1, 1] = imgBlockDrill;
	map[1, 2] = imgBlockDrillBit;
	
} else if(ww.specBlockIncoming == imgBlockMopHead){
	ww.specBlockIncoming = noone;
	canTurn = false;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[1, 0] = imgBlockMopStick;
	map[1, 1] = imgBlockMopStick;
	map[1, 2] = imgBlockMopHead;
	
}else if(ww.specBlockIncoming == imgBlockSeed){
	ww.specBlockIncoming = noone;
	wid = 1;
	hei = 1;
	map[0, 0] = imgBlockSeed;
} else if (ww.specBlockIncoming == imgBlockFox01) {
	ww.foxBucks ++;
	if(choose(true, false)){ ww.specBlockIncoming = noone; }
	wid = 2;
	hei = 2;
	map[0, 0] = imgBlockFox01;
	map[1, 0] = imgBlockFox02;
	map[0, 1] = imgBlockFox03;
	map[1, 1] = imgBlockFox04;
	canTurn = false;
} else if (ww.specBlockIncoming == imgBlockChicken) {
	ww.foxBucks = 0;
	ww.specBlockIncoming = noone;
	wid = 1; hei = 1;
	map[0, 0] = imgBlockChicken;
	isChicken = true;
} else if (ww.specBlockIncoming == imgBlockFish) {
	ww.specBlockIncoming = noone;
	if(choose(true, false)){
		wid = 1; hei = 1;
		map[0, 0] = imgBlockFish;
	} else {
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
		var rr = irandom_range(1, 5);
		if(rr == 1){ map[0, 1] = imgBlockFish; map[2, 1] = imgBlockFish; }
		if(rr == 2){ map[0, 0] = imgBlockFish; map[2, 2] = imgBlockFish; }
		if(rr == 3){ map[1, 0] = imgBlockFish; map[1, 1] = imgBlockFish; }
		if(rr == 4){ map[0, 0] = imgBlockFish; map[2, 0] = imgBlockFish; map[0, 2] = imgBlockFish; map[2, 2] = imgBlockFish; }
		if(rr == 5){ map[0, 0] = imgBlockFish; map[2, 0] = imgBlockFish; map[0, 2] = imgBlockFish; map[2, 2] = imgBlockFish; map[1, 1] = imgBlockFish; }
	}
} else if (ww.specBlockIncoming == imgBlockFish2) {
	ww.specBlockIncoming = noone;
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	var rr = irandom_range(1, 4);
	if(rr == 1){ map[1, 1] = imgBlockFish; }
	if(rr == 2){ map[1, 0] = imgBlockFish; map[1, 1] = imgBlockFish; }
	if(rr == 3){ map[1, 0] = imgBlockFish; map[1, 1] = imgBlockFish; map[1, 2] = imgBlockFish; }
	if(rr == 4){ map[0, 0] = imgBlockFish; map[2, 0] = imgBlockFish; map[1, 0] = imgBlockFish; 
		map[1, 2] = imgBlockFish; map[0, 2] = imgBlockFish; map[2, 2] = imgBlockFish; }
	
	
} else if (ww.specBlockIncoming == imgBlockBub){
	createBlockStandard();
	convertOneTileOfBlock(imgBlockBub);
	ww.specBlockIncoming = noone;

} else if (ww.specBlockIncoming == imgBlockRock){
	createBlockStandard();
	convertAllTilesOfBlock(imgBlockRock);
	repeat(choose(0, 0, 0, 0, 1, 1, 1, 2)){
		convertOneTileOfBlock(imgBlockSand);
	}
	ww.specBlockIncoming = noone;
	
} else if (ww.specBlockIncoming == imgBlockIce){
	//createBlockStandard();
	createBlockHard();
	repeat(choose(0, 1, 2, 3, 4)){
		convertOneTileOfBlock(imgBlockIce);
	}
	ww.specBlockIncoming = noone;

} else if (ww.specBlockIncoming == imgBlockWorm01) {
	ww.specBlockIncoming = noone;
	wid = 2;
	hei = 2;
	map[0, 0] = imgBlockWorm01;
	map[1, 0] = imgBlockWorm02;
	map[0, 1] = imgBlockWorm03;
	map[1, 1] = imgBlockWorm04;
	canTurn = false;
	
} else if (ww.specBlockIncoming == imgBlockMatch01) {
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){ map[a, b] = noone; }}
	map[1, 0] = choose(imgBlockMatch01, imgBlockMatch02, imgBlockMatch03, imgBlockMatch04, imgBlockMatch05);
	map[1, 1] = choose(imgBlockMatch01, imgBlockMatch02, imgBlockMatch03, imgBlockMatch04, imgBlockMatch05);
	map[1, 2] = choose(imgBlockMatch01, imgBlockMatch02, imgBlockMatch03, imgBlockMatch04, imgBlockMatch05);
	ww.specBlockIncoming = noone;


} else if (ww.specBlockIncoming == imgBlockOil){
	createBlockStandard();
	convertOneTileOfBlock(imgBlockOil);
	ww.specBlockIncoming = noone;
	
} else if (ww.specBlockIncoming == imgBlockCoal){
	createBlockStandard();
	convertOneTileOfBlock(imgBlockCoal);
	ww.specBlockIncoming = noone;
	
} else if (ww.specBlockIncoming != noone) {
	map[0, 0] = ww.specBlockIncoming;
	ww.specBlockIncoming = noone;
	wid = 1; hei = 1;
	
	
	
	
	
} else { 
	if(ww.normalBlocks == "easy"){
		createBlockEasy();
	} else {
		createBlockStandard();
	}
}