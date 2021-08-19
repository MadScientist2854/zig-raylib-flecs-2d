const flecs = @import("flecs");

usingnamespace @import("draw_text.zig");
usingnamespace @import("draw_2dshapes.zig");
usingnamespace @import("draw_texture.zig");

pub fn init(world: *flecs.World) void {
    _ = world.newSystem("Draw Text", .on_store, "Text, Position2D", draw_text);
    _ = world.newSystem("Draw Rectangle", .on_store, "Rectangle, Position2D", draw_rectangle);
    _ = world.newSystem("Draw Texture", .on_store, "Texture, Position2D", draw_texture);
}