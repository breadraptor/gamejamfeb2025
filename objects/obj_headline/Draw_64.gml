/// @description draws headlines

draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text(x-270, y, headlines_text[random_index]);