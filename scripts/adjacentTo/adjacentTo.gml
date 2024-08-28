function adjacentTo(a, b, t){
	
	for(var aa=-1; aa<=1; aa++){
		for(var bb=-1; bb<=1; bb++){
			var aaa = a + aa;
			var bbb = b + bb;
			if(inBounds(aaa, bbb)){
				if(ww.bmap[aaa, bbb] == t){
					return true;
				}
			}
		}
	}
	return false;
}