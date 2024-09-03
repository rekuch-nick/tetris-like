draw_self();
draw_set_halign(fa_center);
draw_text_transformed_color(room_width / 2, 80, "Tetra Apros", 2, 2, 0, c_white, c_lime, c_yellow, c_white, 1);
draw_text_color(room_width / 2, 170, "Press [ENTER] to start", c_yellow, c_yellow, c_yellow, c_yellow, 1);
draw_set_halign(fa_left);

draw_text(10, 460, "[LEFT / RIGHT] : move");
draw_text(10, 490, "[DOWN] : fall faster");
draw_text(10, 520, "[UP] : fall slower");
draw_text(10, 550, "[SPACE] : Rotate");
draw_text(10, 580, "[ESC] : Pause / Unpause");
draw_text(10, 610, "[ENTER] : ???");
