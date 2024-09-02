draw_self();
//draw_set_alpha(.85);

/*
for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
	var bb = ww.bmap[a, b];
	
	if(bb != noone){
		
		try {
			draw_sprite_stretched(ww.bmap[a, b], 0, x + a * 32, y + b * 32, 32, 32);
		} catch(e){}
		
	}
}}
*/



if(ww.activeBlock != noone && ww.activeBlock.map[0, 0] != imgBlockSun && ww.state != State.pause){
	draw_set_alpha(.2);
	for(var a=0; a<ww.activeBlock.wid; a++){
		var top = -1;
		for(var b=0; b<ww.activeBlock.hei; b++){
			if(ww.activeBlock.map[a, b] != noone){
				top = ww.activeBlock.ySpot + b;
			}
		}
		
		if(top != -1){
			var aa = ww.activeBlock.xSpot + a;
			for(var b=top; b<18; b++){
				if(ww.bmap[aa, b] == noone){
					draw_sprite_stretched(imgBlockShadow, 0, pa.x + aa * 32, pa.y + b * 32, 32, 32);
				} else {
					break;
				}
			}
			
		}
		
	}
}
draw_set_alpha(1);

if(ww.state == State.pause){
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 2, "P A U S E");
	draw_set_halign(fa_left);
}


draw_text(40, 390, ww.zone);

draw_text(40, 440, "Score");
draw_text(40, 470, score);

var bb = 500;
if(ww.fishMatter){
	draw_sprite_stretched(imgBlockFish, 0, 40, bb, 32, 32);
	draw_text(80, bb + 6, ww.fish);
	bb += 40;
}
if(ww.fruitsMatter){
	draw_sprite_stretched(imgCherry, 0, 40, bb, 32, 32);
	draw_text(80, bb + 6, ww.fruit);
	bb += 40;
}

/*

if(ww.lines > 0){
	draw_sprite_stretched(iconLine, 0, 40, 400, 32, 32);
	draw_text(80, 406, ww.lines);
}

if(ww.lines2 > 0){
	draw_sprite_stretched(iconLine2, 0, 40, 440, 32, 32);
	draw_text(80, 446, ww.lines2);
}

if(ww.lines3 > 0){
	draw_sprite_stretched(iconLine3, 0, 40, 480, 32, 32);
	draw_text(80, 486, ww.lines3);
}

if(ww.fruit > 0){
	draw_sprite_stretched(imgCherry, 0, 40, 520, 32, 32);
	draw_text(80, 526, ww.fruit);
}







if(ww.mpMax > 0){
	var x1 = x + 12 + sprite_width;
	var x2 = (room_width - 8);
	draw_rectangle_color(x1, 8, x2, 32, c_black, c_black, c_black, c_black, false);
	var w = abs(x1 - x2) * (ww.mp / ww.mpMax);
	draw_rectangle_color(x1, 8, x1 + w, 32, c_blue, c_blue, c_navy, c_navy, false);
}


*/



//draw water
if(ww.waterLevel > 0){
	var bb = pa.y + (pa.sprite_height - ww.waterLevel);
	draw_set_alpha(ww.waterAlpha);
	var c1 = ww.waterCol1;
	var c2 = ww.waterCol2;
	var c3 = ww.waterCol3;
	var c4 = ww.waterCol4;
	draw_rectangle_color(pa.x, bb, pa.x + pa.sprite_width, pa.y + pa.sprite_height, c1, c2, c3, c4, false);
	
	
	if(ww.waterBank > 0){
	
		repeat(2){
			var aa = irandom_range(pa.x, pa.x + pa.sprite_width - 4);
			draw_rectangle_color(aa, pa.y, aa + 4, bb, c1, c2, c3, c4, false);
		}
	}
	draw_set_alpha(1);
}



if(ww.debugMode){
	draw_text(32, 0, "Dev Mode ON")
	
}

