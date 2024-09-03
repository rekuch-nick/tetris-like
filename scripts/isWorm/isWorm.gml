function isWorm(a, b){
	if(!inBounds(a, b)){ return false; }
	if(ww.bmap[a, b] == noone){ return false; }
	var t = ww.bmap[a, b].sprite_index;
	return t == imgBlockWorm01 || t == imgBlockWorm02 || t == imgBlockWorm03 || t == imgBlockWorm04;
}