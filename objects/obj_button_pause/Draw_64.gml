
// draw sprite
draw_self();
// set font and color for text
draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(text_color);
// draw text
draw_text(x, y, global.pause ? "Start" : "Stop");