const std = @import("std");
const flecs = @import("flecs");
const rl = @import("raylib.zig");
pub const components = @import("components/export.zig");
pub const systems = @import("systems/export.zig");

pub fn init(world: *flecs.World) void {
    // init components
    _ = world.newComponent(components.Position2D);
    _ = world.newComponent(components.Text);
    _ = world.newComponent(components.Rectangle);
    _ = world.newComponent(components.Texture);

    // init systems
    _ = world.newSystem("Draw Text", .on_store, "Text, Position2D", systems.draw_text);
    _ = world.newSystem("Draw Rectangle", .on_store, "Rectangle, Position2D", systems.draw_rectangle);
    _ = world.newSystem("Draw Texture", .on_store, "Texture, Position2D", systems.draw_texture);
}