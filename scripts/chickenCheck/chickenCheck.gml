function chickenCheck(aaa, bbb){
	
	
	applyFoxRules(aaa, bbb + 1);
	applyFoxRules(aaa, bbb - 1);
	applyFoxRules(aaa + 1, bbb );
	applyFoxRules(aaa - 1, bbb );
	
	
	scoreBlock(aaa, bbb);
	
	
}


function applyFoxRules(a, b){
	if(!isFox(a, b)){ return; }
	
	scoreBlock(a, b);
	
	applyFoxRules(a-1, b);
	applyFoxRules(a+1, b);
	applyFoxRules(a, b-1);
	applyFoxRules(a, b+1);
	
	return ;
}


function isFox(a, b){
	if(!inBounds(a, b)){ return false; }
	if(ww.bmap[a, b] == noone){ return false; }
	if(ww.bmap[a, b].sprite_index == imgBlockFox01){ return true; }
	if(ww.bmap[a, b].sprite_index == imgBlockFox02){ return true; }
	if(ww.bmap[a, b].sprite_index == imgBlockFox03){ return true; }
	if(ww.bmap[a, b].sprite_index == imgBlockFox04){ return true; }
	return false;
}