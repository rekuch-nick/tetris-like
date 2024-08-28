draw_self();
//draw_set_alpha(.85);
for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
	if(ww.bmap[a, b] != noone){
		draw_sprite_stretched(ww.bmap[a, b], 0, x + a * 32, y + b * 32, 32, 32);
	}
}}




if(ww.activeBlock != noone){
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







