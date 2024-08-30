if(ww.state != State.play){ return; }


if(grows > 0){
	growCD --;
	if(growCD < 1){
		growCD = 30;
		grows --;
		if(grows < 1){ canBeLine = true; }
		
		
		if(ySpot > 1){
			if(ww.bmap[xSpot, ySpot - 1] == noone && !blockCollidesPoint(ww.activeBlock, xSpot, ySpot - 1)){
				var a = xSpot; var b = ySpot;
				ySpot --;
				ww.bmap[xSpot, ySpot] = id;
				
				ww.bmap[a, b] = instance_create_depth(pa.x + 32 * a, pa.y + 32 * b, -300, objMapBlock);
				ww.bmap[a, b].sprite_index = imgBlockTreeTrunk;
				
			}
		}
		
		
	}
	
}