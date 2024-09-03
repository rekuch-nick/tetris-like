function znums(){
	
	enum State {
		title, play, pause, chat
	}

}

function print(s){
	show_debug_log(1);
	show_debug_message(s);
}

function printMap(){
	for(var b=0; b<18; b++){
		var str = "";
		for(var a=0; a<14; a++){
			if(ww.bmap[a, b] == noone){
				str += " - ";
			} else if (ww.bmap[a, b].sprite_index == imgBlockMatch01){
				str += "(1)";
			} else if (ww.bmap[a, b].sprite_index == imgBlockMatch02){
				str += "(2)";
			} else if (ww.bmap[a, b].sprite_index == imgBlockMatch03){
				str += "(3)";
			} else if (ww.bmap[a, b].sprite_index == imgBlockMatch04){
				str += "(4)";
			} else if (ww.bmap[a, b].sprite_index == imgBlockMatch05){
				str += "(5)";
				
			} else {
				str += "[/]";
			}
		}
		print(str);
		str = "";
	}
}