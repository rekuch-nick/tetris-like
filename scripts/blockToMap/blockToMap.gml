function blockToMap(blo){
	with(blo){
		for(var a=0; a<wid; a++){ for(var b=0; b<hei; b++){
			var aa = xSpot + a; var bb = ySpot + b;
			if(!inBounds(aa, bb)){ continue; }
			if(map[a, b] == noone){ continue; }
			
			var t = objMapBlock;
			if(map[a, b] == imgBlockDrillBit){ t = objDrillBit; }
			if(map[a, b] == imgBlockSeed){ 
				t = objTreeTop; map[a, b] = imgBlockTreeTop; 
				if(bb < 17 && ww.bmap[aa, bb + 1] != noone && ww.bmap[aa, bb + 1].sprite_index == imgBlockTreeTop){
					ww.bmap[aa, bb + 1].sprite_index = imgBlockTreeTrunk;
				}
			} 
			
			if(map[a, b] == imgBlockFish){ t = objFish; }
			if(map[a, b] == imgBlockFish2){ t = objFish; }
			if(map[a, b] == imgBlockBub){ t = objBubb; }
			if(map[a, b] == imgBlockMopHead){ t = objMop; }
			if(map[a, b] == imgBlockSand){ t = objSand; }
			if(map[a, b] == imgBlockMatch01){ t = objMatch3; }
			if(map[a, b] == imgBlockMatch02){ t = objMatch3; }
			if(map[a, b] == imgBlockMatch03){ t = objMatch3; }
			if(map[a, b] == imgBlockMatch04){ t = objMatch3; }
			if(map[a, b] == imgBlockMatch05){ t = objMatch3; }
			if(map[a, b] == imgBlockHorse){ t = objHorse; }
			if(map[a, b] == imgBlockOil){ t = objOil; }
			if(map[a, b] == imgBlockCoal){ t = objCoal; }
			if(map[a, b] == imgBlockClampL){ t = objClampL; }
			if(map[a, b] == imgBlockClampR){ t = objClampR; }
			if(map[a, b] == imgBlockUp){ t = objUp; }
			
			
			
			
			
			ww.bmap[aa, bb] = instance_create_depth(pa.x + aa * 32, pa.y + bb * 32, -300, t);
			ww.bmap[aa, bb].sprite_index = map[a, b];
			
			if(map[a, b] == imgBlockChicken){ chickenCheck(aa, bb); }
			if(map[a, b] == imgBlockCarrot){ scoreBlock(aa, bb); }
			if(map[a, b] == imgNeedle){ 
				scoreBlock(aa, bb);
				with(objUp){ 
					scoreBlock(xSpot, ySpot); 
					dropCol(xSpot, ySpot, 0);
				}
				
			}
			if(map[a, b] == imgFrog){ 
				if(bb == 17){ scoreBlock(aa, bb); } else {
					instance_destroy(ww.bmap[aa, bb]);
					ww.bmap[aa, bb] = noone;
				}
				continue;
			}
			
			
			if(ww.bmap[aa, bb] != noone && map[a, b] == imgBlockRadWaste){ repeat(8){ichor(); } }
			
			if(ww.bmap[aa, bb] != noone && ww.bmap[aa, bb].sprite_index == imgBlockWitch){ 
				if(!cordInWater(bb)){
					witchRow(bb); 
				} else {
					ww.bmap[aa, bb].sprite_index = imgBlockWitchWet;
				}
			}
			
			if(ww.bmap[aa, bb] != noone && ww.bmap[aa, bb].sprite_index == imgBlockMatchWild 
												&& bb < 17 && ww.bmap[aa, bb + 1] != noone ){ 
				var rip = ww.bmap[aa, bb + 1].sprite_index;
				if(isMatch3Block(rip)){
					for(var aaa=0; aaa<14; aaa++){ for(var bbb=0; bbb<18; bbb++){
						if(ww.bmap[aaa, bbb] != noone && ww.bmap[aaa, bbb].sprite_index == rip){
							scoreBlock(aaa, bbb);
						}
					}}
				}
				scoreBlock(aa, bb);
			}
		}}
		//var bb = blo.map[1, 1];
		instance_destroy();
	}

}