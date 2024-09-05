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
fruitsMatter = false; fruit = 0;
score = 0;
stageScore = 0;


debugPossible = true;
debugMode = false;
spawnArray = [];
pSPawn = 0;
mpBank = 0;

ms = 0;
sc = 0;
mn = 0;
hr = 0;

specBlockIncoming = noone;


unitClipboard = noone;
zoneList = ["Plain", "Farm", "Fish Tank", "Rad Dump", "Pond", "Mine", "Match 3", "Bait Shop", "Frost Fade", "Grassland", "Black Gold", "Frog Or ?", "Day Labor", "Fun Zone", "Endless"];
zoneListIndex = 1;
zone = zoneList[zoneListIndex];
linesMatter =  true;
zoneProgMax = 300;


waterCol1 = c_aqua;
waterCol2 = c_aqua;
waterCol3 = c_aqua;
waterCol4 = c_aqua;
waterAlpha = .3;
waterAlphaMin = .3;
waterAlphaMax = .3;
waterFade = 0;
waterLevel = 0;
waterBank = 0;
fishMatter = false; fish = 0;
canMatch3 = false;


zoneSetup();