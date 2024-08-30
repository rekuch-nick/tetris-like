function drawCharge(a, b){
	a += xSpot;
	b += ySpot;
	
	if(ww.mpBank > 0){
		if(ww.ms % 2 == 0){
			
			var n = ww.mpBank / 150;
			draw_set_alpha(n);
			draw_sprite_stretched(imgBlockCharge, 0, a * 32 + pa.x, b * 32 + pa.y, 32, 32);
			draw_set_alpha(1);
		}
	}

}