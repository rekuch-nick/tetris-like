function isBlock(a, b){
	if(!inBounds(a, b)){ return false; }
	var s = ww.bmap[a, b];
	if(s == imgBlock){ return true; }
	if(s == imgBlock02){ return true; }
	if(s == imgBlock03){ return true; }
	
	
	return false;
}