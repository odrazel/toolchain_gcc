def odrazel_toolchain_gcc_impl(ctx):
  return [platform_common.ToolchainInfo(
    compiler="/usr/bin/gcc",
    cflags=["-O2"]
  )]

odrazel_toolchain_gcc = rule(
  implementation=odrazel_toolchain_gcc_impl,
  toolchains=[],
)
