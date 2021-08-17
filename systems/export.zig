const flecs = @import("flecs");

pub usingnamespace @import("draw_text.zig");

pub fn init(world: *flecs.World) void {
    _ = world.newSystem("Draw Text", .on_store, "Text", draw_text);
}