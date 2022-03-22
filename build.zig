const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const lib = b.addStaticLibrary("zgl", "./zgl.zig");
    lib.setTarget(target);
    lib.setBuildMode(mode);
    lib.install();
}
