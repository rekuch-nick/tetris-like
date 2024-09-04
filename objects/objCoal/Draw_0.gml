event_inherited();

var n = .1 * heat;
draw_set_alpha(n);
draw_sprite_stretched(imgBlockCoalRed, 0, xSpot * 32 + pa.x, ySpot * 32 + pa.y, 32, 32);
draw_set_alpha(1);