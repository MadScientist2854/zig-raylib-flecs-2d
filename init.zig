const std = @import("std");
const flecs = @import("flecs");
const rl = @import("raylib.zig");
const components = @import("components/export.zig");
const systems = @import("systems/export.zig");

pub fn init(world: *flecs.World, allocator: *std.mem.Allocator) std.mem.Allocator.Error!void {
    // add components and systems
    components.init(world);
    systems.init(world);

    // add entities
}