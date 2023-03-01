///draw_scroll_text(x,y,string,chars_drawn,line_width)
xpos = argument0
ypos = argument1
str = argument2
variable = argument3
line_width = argument4
cur_width = 0
len = string_length(str)
chars[len - 1] = 0
line = 0
var i, j;
for (i = len - 1; i >= 0; i--) {
    chars[i] = string_char_at(str, i + 1);
}
draw_text(xpos, ypos, chars[0]);
cur_width += string_width(chars[0]);
for (j = 1; j < variable; j++) {
    if (chars[j] == '#' or cur_width >= line_width) {
        line += string_height(chars[j - 1]);
        cur_width = string_width("* ");
    }
    else {
        draw_text(xpos + cur_width, ypos + line, chars[j]);
        cur_width += string_width(chars[j]);
    }
}
