event_inherited();


dir = 1;
if(xSpot > 10){ dir = -1; }


thinkCDMax = 20;

if(ySpot == 5){ thinkCDMax = 5; }
if(ySpot == 7){ thinkCDMax = 35; }
if(ySpot == 10){ thinkCDMax = 5; }
if(ySpot == 13){ thinkCDMax = 35; }
if(ySpot == 15){ thinkCDMax = 5; }



thinkCD = thinkCDMax;

image_index = irandom_range(0, 3);