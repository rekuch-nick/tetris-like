function rowCheck(){
	
	
	
	var rowsToRemove = [];
	var lines = 0;
	
	for(var b=0; b<18; b++){
		var sum = 0;
		for(var a=0; a<14; a++){
			if(ww.bmap[a, b] != noone){ 
				if(ww.bmap[a, b].canBeLine){
					sum ++; 
				}
			}
		}
		
		if(sum >= 14){
			lines ++;
			for(var a=0; a<14; a++){
				
				if(ww.bmap[a, b].sprite_index == imgBlockIchor){
					instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effBlockRemove);
					ww.bmap[a, b].sprite_index = imgBlockClean;
				} else if(ww.canMatch3 && (
							ww.bmap[a, b].sprite_index == imgBlockMatch01 ||
							ww.bmap[a, b].sprite_index == imgBlockMatch02 ||
							ww.bmap[a, b].sprite_index == imgBlockMatch03 ||
							ww.bmap[a, b].sprite_index == imgBlockMatch04 ||
							ww.bmap[a, b].sprite_index == imgBlockMatch05
							) ){
								
				//} else if(ww.bmap[a, b].sprite_index == imgBlockWalker){
				//	instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effBlockRemove);
				//	instance_destroy(ww.bmap[a, b]);
				//	ww.bmap[a, b] = instance_create_depth(pa.x + a * 32, pa.y + b * 32, -300, objMapBlock);
				//	ww.bmap[a, b].sprite_index = imgBlockStar;
				//	//ww.bmap[a, b].standardBlock = false;
					
				} else {
					scoreBlock(a, b);
					rowsToRemove[array_length(rowsToRemove)] = {a: a, b1: b, b2: 0};
				}
			}
			
		} // end of sum >= 14
		
	}
	
	
	for(var i=0; i<array_length(rowsToRemove); i++){
		dropCol(rowsToRemove[i].a, rowsToRemove[i].b1, rowsToRemove[i].b2);
	}
	
	ww.lines += lines;
	if(lines == 2){ ww.lines2 ++; }
	if(lines == 3){ ww.lines3 ++; }
	
	
	if(ww.canMatch3){ checkMatch3(); }
	
	
	
	//ww.fallCDMax -= .1;
	
}






function cellDrop(a, b) {
	
	if(ww.bmap[a, b] == noone){
				
		ww.bmap[a, b] = ww.bmap[a, b - 1];
		ww.bmap[a, b - 1] = noone;
		if(ww.bmap[a, b] != noone){
			ww.bmap[a, b].ySpot = b;
		}
	}
	
}

function scoreBlock(a, b){
	if(ww.bmap[a, b].sprite_index == imgBlockFish){ ww.fish ++; }
	
	if(ww.linesMatter || 
				(isMatch3Block(ww.bmap[a, b].sprite_index) && ww.canMatch3)
	
							){
		score ++;
		ww.stageScore ++;
	}
	
	instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effBlockRemove);
	instance_destroy(ww.bmap[a, b]);
	ww.bmap[a, b] = noone;
	
	
	
	stageCheck(false);
}