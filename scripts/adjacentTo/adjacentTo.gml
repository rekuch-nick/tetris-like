function adjacentTo(a, b, t){
	
	for(var aa=-1; aa<=1; aa++){
		for(var bb=-1; bb<=1; bb++){
			var aaa = a + aa;
			var bbb = b + bb;
			if(inBounds(aaa, bbb)){
				if(t == noone && ww.bmap[aaa, bbb] == noone){ return true; }
				else if (ww.bmap[aaa, bbb] != noone && ww.bmap[aaa, bbb].sprite_index == t){
				
					return true;
				}
			}
		}
	}
	return false;
}

function adjacentCords(a, b){
	var result = [];
	for(var aa=-1; aa<=1; aa++){
		for(var bb=-1; bb<=1; bb++){
			if(inBounds(aa, bb)){
				result[array_length(result)] = {a: aa, b: bb};
			}
		}
	}
	return result;
}


