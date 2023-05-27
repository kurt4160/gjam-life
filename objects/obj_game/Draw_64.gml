/// @description draws status information
draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_grey);
// Number of calculated generations
draw_text(810, 10, $"Generations: {global.generations}");
// Number of active cells
draw_text(810, 40, $"Cells: {global.cell_count}");
