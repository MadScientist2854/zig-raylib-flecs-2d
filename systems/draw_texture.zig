const flecs = @import("flecs");
const rl = @import("raylib");
const components = @import("../components/export.zig");

pub fn draw_texture(it: *flecs.ecs_iter_t) callconv(.C) void {
    const textures = it.column(components.Texture, 1);
    const positions = it.column(components.Position2D, 2);

    var i: usize = 0;
    while (i < it.count) : ( i += 1 ) {
        const texture = textures[i].texture;
        const color = textures[i].color;
        const pos = positions[i];

        rl.DrawTexture(texture, @floatToInt(i32, pos.x), @floatToInt(i32, pos.y), color);
    }
}