if(ww.state == State.pause){ return; }

if(ww.activeBlock == id){
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){
		var blo = map[a, b];
		if(blo != noone){
			//drawBlock(pa.x + xSpot * 32 + 32 * a, pa.y + ySpot * 32 + 32 * b, blo);
			draw_sprite_stretched(blo, image_index, pa.x + xSpot * 32 + 32 * a, pa.y + ySpot * 32 + 32 * b, 32, 32);
			drawCharge(a, b);
		}
	}}
	
	if(map[0, 0] == imgBlockSun){
		draw_set_alpha(random_range(0, .3));
		draw_sprite_stretched(imgBlockSunShine, 0, pa.x + (xSpot - 2) * 32 + 16, pa.y + (ySpot - 2) * 32 + 16, 128, 128);
		draw_set_alpha(1);
	}
	
} else if (ww.nextBlock == id){
	for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){
		var blo = map[a, b];
		if(blo != noone){
			//drawBlock(100 + 32 * a, 100 + 32 * a, blo);
			draw_sprite_stretched(blo, image_index, 96 + 32 * a, 96 + 32 * b, 32, 32);
		}
	}}
	
}



