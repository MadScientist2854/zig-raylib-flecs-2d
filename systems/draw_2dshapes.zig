const flecs = @import("flecs");
const rl = @import("raylib");
const components = @import("../components/export.zig");

pub fn draw_rectangle(it: *flecs.ecs_iter_t) callconv(.C) void {
    const rectangles = it.column(components.Rectangle, 1);
    const positions = it.column(components.Position2D, 2);

    var i: usize = 0;
    while (i < it.count) : ( i += 1 ) {
        const rectangle = rectangles[i];
        const size = rectangle.size;
        const color = rectangle.color;
        const pos = positions[i];

        rl.DrawRectangleV(rl.Vector2 { .x = pos.x, .y = pos.y }, size, color);
    }
}