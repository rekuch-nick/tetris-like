function rowCheck(){
	
	
	
	var rowsToRemove = [];
	var lines = 0;
	
	for(var b=17; b>=0; b--){
		var sum = 0;
		for(var a=0; a<14; a++){
			if(ww.bmap[a, b] != noone){ sum ++; }
		}
		
		if(sum >= 14){
			lines ++;
			for(var a=0; a<14; a++){
				
				if(ww.bmap[a, b] == imgBlockIchor){
					
				} else {
					instance_create_depth(pa.x + a * 32, pa.y + b * 32, -800, effBlockRemove);
					ww.bmap[a, b] = noone;
				}
			}
			
			rowsToRemove[array_length(rowsToRemove)] = b;
		}
		
	}
	
	for(var i=0; i<array_length(rowsToRemove); i++){
		
		
		for(var i=0; i<array_length(rowsToRemove); i++){
			rowDrop(rowsToRemove[i]);
			for(var ii=i+1; ii<array_length(rowsToRemove); ii++){
				rowsToRemove[ii] ++;
			}
		}
	}
	
	ww.lines += lines;
	if(lines == 2){ ww.lines2 ++; }
	if(lines == 3){ ww.lines3 ++; }
	
}




function rowDrop(bb) {
	
	for(var b=bb; b>0; b--){
		for(var a=0; a<14; a++){
			if(ww.bmap[a, b] == noone){
				
				ww.bmap[a, b] = ww.bmap[a, b - 1];
				ww.bmap[a, b - 1] = noone;
				try {
					ww.bmap[a, b].ySpot = b;
				} catch(e){ }
			}
		}
	}
}