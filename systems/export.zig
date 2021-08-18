const flecs = @import("flecs");

usingnamespace @import("draw_text.zig");
usingnamespace @import("draw_2dshapes.zig");

pub fn init(world: *flecs.World) void {
    _ = world.newSystem("Draw Text", .on_store, "Text, Position2D", draw_text);
    _ = world.newSystem("Draw Rctangle", .on_store, "Rectangle, Position2D", draw_rectangle);
}