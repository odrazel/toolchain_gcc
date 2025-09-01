def gcc_compile_impl(ctx):
  tc = ctx.toolchains["//toolchain:odrazel_toolchain_gcc_type"]

  ctx.actions.run(
    inputs=[ctx.file.src],
    outputs=[ctx.outputs.out],
    executable=tc.compiler,
    arguments=tc.cflags + ["-o", ctx.outputs.out.path, ctx.file.src.path]
  )

gcc_compile = rule(
  implementation=gcc_compile_impl,
  attrs={
    "src": attr.label(allow_single_file=True),
  },
  outputs={"out": "%{name}.out"},
  toolchains=["//toolchain:odrazel_toolchain_gcc_type"]
)
