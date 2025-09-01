def _odrazel_toolchain_gcc_impl(ctx):
	return struct(
		compiler="/usr/bin/gcc",
		cflags=["-O2"]
	)

_odrazel_toolchain_gcc_rule = rule(
	implementation=_odrazel_toolchain_gcc_impl,
	toolchains=[]
)
