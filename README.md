# IRO-zig

Just started coding in Zig and thought maybe it would be nice to create a terminal color library 
for Zig.  
There are functions for the default colors of your terminal to correspond with your colorscheme. 
And there are also functions where you can color the text with RGB values, if your terminal supports it.  
Please give me your opinion on the lib and how I could improve it. You are also very welcome to contribute

p.s.: "iro" is japanese and means "color"

### Usage
```zig
// Red colored text
const red = iro.red("This text will be red", .{});
// Green colored text
const green = iro.green("This text will be green", .{});
// and more colors like: yellow, magenta, cyan, blue, white, black

// You can also color the background the same way
const red_bg = iro.red_bg("This text's background will be red", .{});
const green_bg = iro.green_bg("This text's background will be green", .{});
// also all the above colors with: {color}_bg(...)

// There is also functionallity for RGB color, if your terminal supports it
// You put it into the first arguments to format the text
const rgb = iro.color("This text will be colored how you like it", .{255, 30, 255});

// You can also color the background RGB
const rgb = iro.color_bg("This text's background will be colored how you like it", .{255, 30, 255});

// Formatting is also supported
const red_fmt = iro.red("This text and format will be red: {d}", .{255});
const rgb_fmt = iro.color("This text and format will be colored how you like it: {s}", .{255, 255, 0, "This is text"});

// you can also chain them
const red_green_chain = iro.red("Hello, {s}", .{iro.green("world!", .{})});
```

#### Credits
Big credit to this article: [Terminal Colors](https://chrisyeh96.github.io/2020/03/28/terminal-colors.html)
