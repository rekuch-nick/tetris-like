if(ww.state == State.pause && !ww.debugMode){ return; }

if(dir == 1){
	draw_sprite_stretched(sprite_index, image_index, xSpot * 32 + pa.x, ySpot * 32 + pa.y, 32, 32);
} else {
	//draw_sprite_stretched(sprite_index, image_index, xSpot * 32 + pa.x + 32, ySpot * 32 + pa.y, 32, 32);
	draw_sprite_ext(sprite_index, image_index, (xSpot) * 32 + pa.x + 32, ySpot * 32 + pa.y, -4, 4, 0, c_white, 1);
}

