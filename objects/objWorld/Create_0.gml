randomize();
icd = 3;
input();
activeBlock = noone;
nextBlock = noone;
draw_set_font(fntPlain);

room_speed = 30;
fallCD = 0;
fallCDMax = 30;

for(var a=0; a<14; a++){ for(var b=0; b<18; b++){
	bmap[a, b] = noone;
}}


instance_create_depth(0, 0, -1000, objScreenTitle);

lines = 0;
lines2 = 0;
lines3 = 0;
fruit = 0;

pSPawn = 0;
mp = 0;
mpMax = 0;
mpBank = 0;

ms = 0;
sc = 0;
mn = 0;
hr = 0;

specBlockIncoming = noone;