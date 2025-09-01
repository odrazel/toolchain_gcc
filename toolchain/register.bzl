def register_gcc_toolchain(type_label="//:odrazel_toolchain_gcc_type"):
  native.toolchain(
    name="odrazel_toolchain_gcc",
    toolchain_type=type_label,
    toolchain="@odrazel_toolchain_gcc//toolchain:impl",
    visibility=["//visibility:public"],
  )

