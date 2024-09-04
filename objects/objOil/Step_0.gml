if(ww.state != State.play){ return; }

thinkCD --;
if(thinkCD < 1){
	thinkCD = 120;
	ww.waterBank -= 8;
	
	if(inBounds(xSpot, ySpot - 1)){
		if(ww.bmap[xSpot, ySpot - 1] != noone){
			var spt = ww.bmap[xSpot, ySpot - 1].sprite_index;
			if(spt == imgBlockCoal){
				ww.bmap[xSpot, ySpot - 1].heat +=1;
				return;
			} else if(spt == imgBlockOil){
				
			} else {
				scoreBlock(xSpot, ySpot - 1);
			}
		}
	}
	
	instance_create_depth(pa.x + xSpot * 32, pa.y + (ySpot - 1) * 32, -800, effFire);
}



